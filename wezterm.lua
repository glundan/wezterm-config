local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "carbonfox"
config.font = wezterm.font("0xProto Nerd Font Mono")
config.font_size = 16

return config
