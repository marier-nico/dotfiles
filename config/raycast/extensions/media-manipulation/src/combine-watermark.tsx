import { Form, ActionPanel, Action, showHUD, getSelectedFinderItems, popToRoot } from "@raycast/api";
import { execFile } from "child_process";
import { promisify } from "util";
import { dirname, join } from "path";
import { useState, useEffect } from "react";

const execFileAsync = promisify(execFile);
const MAGICK = "/opt/homebrew/bin/magick";

const DEFAULT_MAX_HEIGHT = "400";
const DEFAULT_BAR_HEIGHT = "300";
const DEFAULT_OUTPUT_FILENAME = "combined_watermark.png";

type Prefill = { eventLogo: string; myLogo: string } | null;

export default function Command() {
  const [prefill, setPrefill] = useState<Prefill>(null);
  const [isReady, setIsReady] = useState(false);

  useEffect(() => {
    getSelectedFinderItems()
      .then((items) => {
        if (items.length === 2) {
          setPrefill({ eventLogo: items[0].path, myLogo: items[1].path });
        }
      })
      .catch(() => {
        // No Finder selection is fine — user will pick files in the form
      })
      .finally(() => setIsReady(true));
  }, []);

  async function handleSubmit(values: {
    eventLogo: string[];
    myLogo: string[];
    maxHeight: string;
    barHeight: string;
    outputFilename: string;
  }) {
    const eventLogo = values.eventLogo[0];
    const myLogo = values.myLogo[0];

    if (!eventLogo || !myLogo) {
      await showHUD("Both logos are required");
      return;
    }

    const maxHeight = values.maxHeight || DEFAULT_MAX_HEIGHT;
    const barHeight = values.barHeight || DEFAULT_BAR_HEIGHT;
    const outputPath = join(dirname(eventLogo), values.outputFilename || DEFAULT_OUTPUT_FILENAME);

    try {
      await execFileAsync(MAGICK, [
        "(", eventLogo, "-coalesce", "-resize", `x${maxHeight}>`, "-background", "none", "-gravity", "center", "-extent", `x${maxHeight}`, ")",
        "(",
          "-size", `48x${barHeight}`, "xc:none",
          "-size", `12x${barHeight}`, "xc:white",
          "-size", `48x${barHeight}`, "xc:none",
          "-background", "none", "+append",
          "-gravity", "center", "-extent", `x${maxHeight}`,
        ")",
        "(", myLogo, "-coalesce", "-resize", `x${maxHeight}>`, "-background", "none", "-gravity", "center", "-extent", `x${maxHeight}`, ")",
        "-background", "none", "+append",
        outputPath,
      ]);
      await showHUD(`Saved: ${outputPath}`);
    } catch (err) {
      await showHUD(`Error: ${err instanceof Error ? err.message : String(err)}`);
    }

    await popToRoot();
  }

  // Delay rendering until prefill is resolved so defaultValue applies on first mount
  if (!isReady) return null;

  return (
    <Form
      actions={
        <ActionPanel>
          <Action.SubmitForm title="Combine Logos" onSubmit={handleSubmit} />
        </ActionPanel>
      }
    >
      <Form.FilePicker
        id="eventLogo"
        title="Event Logo"
        allowMultipleSelection={false}
        defaultValue={prefill ? [prefill.eventLogo] : []}
      />
      <Form.FilePicker
        id="myLogo"
        title="My Logo"
        allowMultipleSelection={false}
        defaultValue={prefill ? [prefill.myLogo] : []}
      />
      <Form.Separator />
      <Form.TextField id="maxHeight" title="Max Height (px)" defaultValue={DEFAULT_MAX_HEIGHT} />
      <Form.TextField id="barHeight" title="Bar Height (px)" defaultValue={DEFAULT_BAR_HEIGHT} />
      <Form.TextField id="outputFilename" title="Output Filename" defaultValue={DEFAULT_OUTPUT_FILENAME} />
    </Form>
  );
}
