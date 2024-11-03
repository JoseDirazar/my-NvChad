-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local dimmer = { brightness = 0.07 }

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Belafonte Night (Gogh)'
--config.window_background_image = './Imágenes/term-bg/dark-abstract-ubuntu-hd-8yw4fdw80j4hjyrp.jpg'
config.background = {
  {
    source = {
      File = './Pictures/landscape.jpg' },
    width = 'Cover',
    horizontal_align = 'Center',
    vertical_align = "Middle",
    hsb = dimmer,
  },
}
config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.window_background_opacity = 0.9
config.enable_tab_bar = false
config.window_decorations = "NONE"

-- and finally, return the configuration to wezterm
return config
