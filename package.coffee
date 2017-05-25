pack = Packages.register
  name: 'screenshots'
  description: 'Various screenshot taking methods'

pack.commands
  continuous: false
,
  'fullscreen':
    spoken: 'screenshot full'
    description: 'Take a screenshot of the whole screen'
  'current-window':
    spoken: 'screenshot window'
    description: 'Take a screenshot of the current window'

require("./#{global.platform}")(pack)
