local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- CONFIG START

-- config.color_scheme = 'Elementary (Gogh)'
-- config.color_scheme = 'Espresso (Gogh)'
config.color_scheme = 'Obsidian (Gogh)'

config.initial_rows = 35
config.initial_cols = 140
config.hide_tab_bar_if_only_one_tab = true

-- config.font = wezterm.font 'JetBrainsMonoNL'
config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
config.font_size = 13.0

config.window_frame = {
  font_size = 13.0,
  -- active_titlebar_bg = '#333333',
  -- inactive_titlebar_bg = '#333333',
}

-- CONFIG END

return config
