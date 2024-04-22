-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"
--

config.font = wezterm.font("Ubuntu Mono")
config.font_size = 17
-- config.harfbuzz_features = { 'calt=1', 'clig=0', 'liga=1' }
config.line_height = 1.2

config.enable_tab_bar = false
config.window_padding = {
	left = 16,
	right = 16,
	top = 16,
	bottom = 4,
}

-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
-- and finally, return the configuration to wezterm
return config
