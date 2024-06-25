-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local dimmer = { brightness = 0.1 }

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'
--config.window_background_image = './Imágenes/term-bg/dark-abstract-ubuntu-hd-8yw4fdw80j4hjyrp.jpg'
config.background = {
  {
    source =  {
      File = './Imágenes/term-bg/ubuntu-blue-bg.jpg'},
    width = 'Cover',
    horizontal_align = 'Center',
    vertical_align = "Middle",
    hsb = dimmer
  },
}



-- and finally, return the configuration to wezterm
return config
