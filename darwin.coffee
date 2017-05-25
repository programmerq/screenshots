module.exports = (screenshots) ->
  darwin = Packages.get 'darwin'
  darwin.implement
    'screenshots:fullscreen': ->
      @applescript """
do shell script "screencapture -c -tpng"
tell application "Preview" to activate
tell application "System Events" to tell process "Preview"
    click menu item "New From Clipboard" of menu 1 of menu bar item "File" of menu bar 1
end tell
      """
    'screenshots:current-window': ->
      @applescript """
tell application "System Events"
    set screenshot to name of first process where it is frontmost
end tell
tell application screenshot to set winID to id of window 1

do shell script "screencapture -c -tpng -l " & winID
tell application "Preview" to activate
tell application "System Events" to tell process "Preview"
    click menu item "New From Clipboard" of menu 1 of menu bar item "File" of menu bar 1
end tell
            """
