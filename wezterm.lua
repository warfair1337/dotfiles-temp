-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- WebGpu uses Metal instead of plain OpenGL.
config.front_end = "WebGpu"
config.max_fps = 30

-- Cursor options
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 600

-- Option/Composed key
config.send_composed_key_when_left_alt_is_pressed = true

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.color_scheme = 'Macintosh (base16)'
-- config.color_scheme = 'Muse (terminal.sexy)'
config.color_scheme = 'CGA'
-- config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font('MesloLGS Nerd Font Mono')
config.font_size = 14

config.initial_rows = 48
config.initial_cols = 160

-- and finally, return the configuration to wezterm
return config
