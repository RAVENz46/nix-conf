-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Avoid breaking textures
config.front_end = "WebGpu"

-- This is where you actually apply your config choices

-- Appearance
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.9
config.font_size = 10

-- Close window without confirmation
config.window_close_confirmation = "NeverPrompt"

-- tab configurations
--config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
--config.enable_tab_bar = false

-- hide title bar
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
