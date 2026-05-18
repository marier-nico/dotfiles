import { Form, ActionPanel, Action, showHUD, getSelectedFinderItems, popToRoot } from "@raycast/api";
import { execFile } from "child_process";
import { readdir, stat } from "fs/promises";
import { join } from "path";
import { promisify } from "util";
import { useEffect, useState } from "react";

const execFileAsync = promisify(execFile);

const EXIFTOOL = "/opt/homebrew/bin/exiftool";
const SETFILE = "/usr/bin/SetFile";

type FileWithDate = { path: string; date: Date };
type FileWithoutDate = { path: string; date: null };
type State =
  | { status: "loading" }
  | { status: "needsDate"; filesWithDate: FileWithDate[]; filesWithoutDate: FileWithoutDate[] };

async function collectFiles(dirPath: string): Promise<string[]> {
  const entries = await readdir(dirPath, { withFileTypes: true });
  const files: string[] = [];
  for (const entry of entries) {
    if (entry.name.startsWith(".")) continue;
    const fullPath = join(dirPath, entry.name);
    if (entry.isDirectory()) {
      files.push(...(await collectFiles(fullPath)));
    } else if (entry.isFile()) {
      files.push(fullPath);
    }
  }
  return files;
}

async function expandPaths(paths: string[]): Promise<string[]> {
  const files: string[] = [];
  for (const p of paths) {
    const s = await stat(p);
    if (s.isDirectory()) {
      files.push(...(await collectFiles(p)));
    } else if (s.isFile()) {
      files.push(p);
    }
  }
  return files;
}

async function getExifDate(filePath: string): Promise<Date | null> {
  try {
    const { stdout } = await execFileAsync(EXIFTOOL, [
      "-DateTimeOriginal",
      "-CreateDate",
      "-MetadataDate",
      "-ModifyDate",
      "-s3",
      "-d",
      "%Y-%m-%dT%H:%M:%S",
      filePath,
    ]);
    const line = stdout.trim().split("\n")[0]?.trim();
    if (!line) return null;
    const date = new Date(line);
    return isNaN(date.getTime()) ? null : date;
  } catch {
    return null;
  }
}

function toSetFileDate(date: Date): string {
  const mm = String(date.getMonth() + 1).padStart(2, "0");
  const dd = String(date.getDate()).padStart(2, "0");
  const yyyy = date.getFullYear();
  const hh = String(date.getHours()).padStart(2, "0");
  const min = String(date.getMinutes()).padStart(2, "0");
  const ss = String(date.getSeconds()).padStart(2, "0");
  return `${mm}/${dd}/${yyyy} ${hh}:${min}:${ss}`;
}

async function applyTimestamp(filePath: string, date: Date): Promise<void> {
  const formatted = toSetFileDate(date);
  await execFileAsync(SETFILE, ["-m", formatted, "-d", formatted, filePath]);
}

async function processAll(
  filesWithDate: FileWithDate[],
  filesWithoutDate: FileWithoutDate[],
  fallbackDate: Date,
): Promise<{ success: number; failed: number }> {
  const results = await Promise.allSettled([
    ...filesWithDate.map(({ path, date }) => applyTimestamp(path, date)),
    ...filesWithoutDate.map(({ path }) => applyTimestamp(path, fallbackDate)),
  ]);
  return {
    success: results.filter((r) => r.status === "fulfilled").length,
    failed: results.filter((r) => r.status === "rejected").length,
  };
}

function hudMessage(success: number, failed: number): string {
  const base = `Updated ${success} file${success !== 1 ? "s" : ""}`;
  return failed ? `${base}, ${failed} failed` : base;
}

export default function Command() {
  const [state, setState] = useState<State>({ status: "loading" });

  useEffect(() => {
    async function run() {
      const items = await getSelectedFinderItems();
      if (items.length === 0) {
        await showHUD("No files selected in Finder");
        await popToRoot();
        return;
      }

      const allFiles = await expandPaths(items.map((i) => i.path));
      if (allFiles.length === 0) {
        await showHUD("No files found");
        await popToRoot();
        return;
      }

      const dateResults = await Promise.all(allFiles.map(async (path) => ({ path, date: await getExifDate(path) })));
      const filesWithDate = dateResults.filter((r): r is FileWithDate => r.date !== null);
      const filesWithoutDate = dateResults.filter((r): r is FileWithoutDate => r.date === null);

      if (filesWithoutDate.length === 0) {
        const { success, failed } = await processAll(filesWithDate, [], new Date());
        await showHUD(hudMessage(success, failed));
        await popToRoot();
        return;
      }

      setState({ status: "needsDate", filesWithDate, filesWithoutDate });
    }

    run().catch(async (err) => {
      await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
      await popToRoot();
    });
  }, []);

  if (state.status !== "needsDate") return null;

  const { filesWithDate, filesWithoutDate } = state;
  const missingCount = filesWithoutDate.length;
  const withDateCount = filesWithDate.length;

  const description = [
    `${missingCount} file${missingCount !== 1 ? "s" : ""} have no EXIF date.`,
    withDateCount > 0 ? `${withDateCount} file${withDateCount !== 1 ? "s" : ""} will use their EXIF date.` : "",
    "Enter a fallback date for the rest.",
  ]
    .filter(Boolean)
    .join(" ");

  async function handleSubmit(values: { date: Date }) {
    try {
      const { success, failed } = await processAll(filesWithDate, filesWithoutDate, values.date);
      await showHUD(hudMessage(success, failed));
    } catch (err) {
      await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
    }
    await popToRoot();
  }

  return (
    <Form
      actions={
        <ActionPanel>
          <Action.SubmitForm title="Set Timestamps" onSubmit={handleSubmit} />
        </ActionPanel>
      }
    >
      <Form.Description title="Missing EXIF Data" text={description} />
      <Form.DatePicker id="date" title="Fallback Date" defaultValue={new Date()} type={Form.DatePicker.Type.DateTime} />
    </Form>
  );
}
