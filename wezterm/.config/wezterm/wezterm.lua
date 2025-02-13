-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'AdventureTime'
config.window_decorations = "TITLE | RESIZE"
-- and finally, return the configuration to wezterm
return config
