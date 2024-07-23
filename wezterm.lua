local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 14

config.color_scheme = "Tokyo Night"
config.enable_tab_bar = false
config.window_close_confirmation = 'NeverPrompt'

return config
