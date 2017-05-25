# Screenshot functionality by voice

This adds two commands:

* 🔉screenshot full🔉
* 🔉screenshot window🔉

Both of these use the `screencapture` command to take a screenshot of either the primary screen, or of the frontmost window. It puts the image data in the clipboard, and then opens preview, and creates a new item from the clipboard data. This is trying to capture a workflow that I use fairly frequently: open preview, use the File menu to select Take Screenshot, specify whether I want a single window, or a full-screen, and then take the screenshot. I did not include selection by region, but it would be easy to add.
