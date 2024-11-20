local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Dracula (Official)'
config.enable_tab_bar = false
config.window_padding = {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0,
}
config.window_decorations = "NONE"
config.font = wezterm.font 'Victor Mono Nerd Font'
config.font_size = 9

return config
