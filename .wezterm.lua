local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 12

config.color_scheme = "Tokyo Night"
config.enable_tab_bar = false

return config
