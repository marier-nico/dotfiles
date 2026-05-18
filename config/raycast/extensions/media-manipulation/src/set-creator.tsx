import { Form, ActionPanel, Action, showHUD, getSelectedFinderItems, popToRoot } from "@raycast/api";
import { execFile } from "child_process";
import { promisify } from "util";
import { useEffect, useState } from "react";

const execFileAsync = promisify(execFile);

const EXIFTOOL = "/opt/homebrew/bin/exiftool";
const DEFAULT_RIGHTS = "https://creativecommons.org/licenses/by-nc-nd/2.0/";

type FileState = { status: "loading" } | { status: "ready"; paths: string[] };

export default function Command() {
  const [fileState, setFileState] = useState<FileState>({ status: "loading" });

  useEffect(() => {
    getSelectedFinderItems()
      .then((items) => {
        if (items.length === 0) {
          return showHUD("No files selected in Finder").then(() => popToRoot());
        }
        setFileState({ status: "ready", paths: items.map((i) => i.path) });
      })
      .catch(async (err) => {
        await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
        await popToRoot();
      });
  }, []);

  async function handleSubmit(values: { creator: string; rights: string }) {
    if (fileState.status !== "ready") return;

    try {
      await execFileAsync(EXIFTOOL, [
        `-xmp:Creator=${values.creator}`,
        `-xmp:Rights=${values.rights}`,
        "-overwrite_original",
        "-r",
        ...fileState.paths,
      ]);
      await showHUD(`Updated ${fileState.paths.length} item${fileState.paths.length !== 1 ? "s" : ""}`);
    } catch (err) {
      await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
    }

    await popToRoot();
  }

  const isLoading = fileState.status === "loading";
  const itemCount = fileState.status === "ready" ? fileState.paths.length : null;

  return (
    <Form
      isLoading={isLoading}
      actions={
        <ActionPanel>
          <Action.SubmitForm title="Set Creator" onSubmit={handleSubmit} />
        </ActionPanel>
      }
    >
      {itemCount !== null && (
        <Form.Description
          title="Selection"
          text={`${itemCount} item${itemCount !== 1 ? "s" : ""} selected (folders will be processed recursively)`}
        />
      )}
      <Form.TextField id="creator" title="Creator" placeholder="Your name or organization" autoFocus />
      <Form.TextField id="rights" title="Rights" defaultValue={DEFAULT_RIGHTS} />
    </Form>
  );
}
