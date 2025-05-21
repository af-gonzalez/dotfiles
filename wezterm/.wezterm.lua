local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.font = wezterm.font("BlexMono Nerd Font", { weight = "Regular" })
config.font_size = 16
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font("BlexMono Nerd Font", { weight = "Regular" }),
	},
}

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.97
config.macos_window_background_blur = 9
config.window_padding = {
	left = 25,
	right = 25,
	top = 25,
	bottom = 25,
}

return config
