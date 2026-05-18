import { List, ActionPanel, Action, Clipboard, showHUD, getSelectedFinderItems, popToRoot } from "@raycast/api";
import { execFile } from "child_process";
import { promisify } from "util";
import { basename } from "path";
import { useEffect, useState } from "react";

const execFileAsync = promisify(execFile);
const EXIFTOOL = "/opt/homebrew/bin/exiftool";

type Tag = { key: string; value: string };
type FileExif = { path: string; tags: Tag[] };
type State = { status: "loading" } | { status: "ready"; files: FileExif[] };

async function readExif(paths: string[]): Promise<FileExif[]> {
  const { stdout } = await execFileAsync(EXIFTOOL, ["-j", ...paths]);
  const parsed: Record<string, unknown>[] = JSON.parse(stdout);
  return parsed.map((obj) => {
    const path = String(obj["SourceFile"] ?? "");
    const tags = Object.entries(obj)
      .filter(([key]) => key !== "SourceFile")
      .map(([key, value]) => ({
        key,
        value: typeof value === "object" ? JSON.stringify(value) : String(value ?? ""),
      }));
    return { path, tags };
  });
}

export default function Command() {
  const [state, setState] = useState<State>({ status: "loading" });
  const [isShowingDetail, setIsShowingDetail] = useState(true);

  useEffect(() => {
    async function run() {
      const items = await getSelectedFinderItems();
      if (items.length === 0) {
        await showHUD("No files selected in Finder");
        await popToRoot();
        return;
      }
      const files = await readExif(items.map((i) => i.path));
      setState({ status: "ready", files });
    }

    run().catch(async (err) => {
      await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
      await popToRoot();
    });
  }, []);

  const files = state.status === "ready" ? state.files : [];

  return (
    <List isLoading={state.status === "loading"} isShowingDetail={isShowingDetail}>
      {files.map(({ path, tags }) => (
        <List.Section key={path} title={basename(path)}>
          {tags.map(({ key, value }) => (
            <List.Item
              key={key}
              title={key}
              subtitle={isShowingDetail ? undefined : value}
              detail={<List.Item.Detail markdown={`**${key}**\n\n\`\`\`\n${value}\n\`\`\``} />}
              actions={
                <ActionPanel>
                  <Action
                    title="Copy Value"
                    onAction={async () => {
                      await Clipboard.copy(value);
                      await showHUD("Copied to clipboard");
                    }}
                  />
                  <Action
                    title={isShowingDetail ? "Hide Detail" : "Show Detail"}
                    onAction={() => setIsShowingDetail((v) => !v)}
                    shortcut={{ modifiers: ["cmd"], key: "d" }}
                  />
                </ActionPanel>
              }
            />
          ))}
        </List.Section>
      ))}
    </List>
  );
}
