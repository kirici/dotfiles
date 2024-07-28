local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- CONFIG START

-- config.color_scheme = "Obsidian (Gogh)"
-- config.color_scheme = "Dark+"
config.color_scheme = "Darkside (Gogh)"

config.initial_rows = 35
config.initial_cols = 140
config.hide_tab_bar_if_only_one_tab = true

-- config.font = wezterm.font("JetBrainsMonoNL")
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 13.0

config.window_frame = {
	font_size = 13.0,
	inactive_titlebar_bg = "#808080",
	border_left_width = "0.2cell",
	border_right_width = "0.2cell",
	border_bottom_height = "0.1cell",
	border_top_height = "0.1cell",
	border_left_color = "#313131",
	border_right_color = "#313131",
	border_bottom_color = "#313131",
	border_top_color = "#313131",
}

-- CONFIG END

return config
