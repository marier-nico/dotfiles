local dn = require('dark_notify')

dn.run({
    schemes = {
      dark  = "catppuccin-macchiato",
      light = "catppuccin-latte"
    }
})

dn.update()
