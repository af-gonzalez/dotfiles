local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.font = wezterm.font("RecMonoLinear Nerd Font", { weight = "Regular" })
config.font_size = 16

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.color_scheme = "rose-pine"

config.window_background_opacity = 0.95
config.macos_window_background_blur = 9
config.window_padding = {
	left = 25,
	right = 25,
	top = 25,
	bottom = 25,
}

return config
