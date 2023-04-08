local wezterm = require 'wezterm'
return {
    default_prog = { '/usr/bin/fish', '-l' },
    font = wezterm.font 'Inconsolata',
    cursor_blink_rate = 1,
    window_background_opacity = 0.9,
    use_ime = false,
    color_scheme = "Dracula+",
    hide_tab_bar_if_only_one_tab = true,
    font_size = 12.0,
    line_height = 1.2,
    window_close_confirmation = "NeverPrompt",
     keys = {
        {
            key = "Enter",
            mods = "SHIFT|CTRL",
            action = wezterm.action { SpawnTab = "CurrentPaneDomain" }
        },

        {
            key = "w",
            mods = "SHIFT|CTRL",
            action = wezterm.action { CloseCurrentTab = { confirm = false } },
        },
    },
}
