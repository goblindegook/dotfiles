local wezterm = require 'wezterm'

function scheme_for_appearance()
  if wezterm.gui.get_appearance():find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

local config = wezterm.config_builder()
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font_with_fallback {
  { family = "JetbrainsMono NF" },
  { family = "Jetbrains Mono" },
}
config.font_size = 13.0
-- config.freetype_load_target = "Light"
-- config.freetype_render_target = "HorizontalLcd"
config.freetype_load_flags = 'NO_HINTING'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.97
return config