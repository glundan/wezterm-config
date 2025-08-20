local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

local os = wezterm.target_triple
if os == "x86_64-pc-windows-msvc" then
	config.default_prog = { "powershell.exe" }
end

config.color_scheme = "carbonfox"
config.font = wezterm.font("0xProto Nerd Font Mono")
config.font_size = 14

config.keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "f",
			mods = "ALT",
		}),
	},
}

return config
