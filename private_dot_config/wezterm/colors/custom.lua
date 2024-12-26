-- A slightly altered version of catppucchin mocha
-- stylua: ignore
local mocha = {
    rosewater = '#f5e0dc',
    flamingo  = '#f2cdcd',
    pink      = '#f5c2e7',
    mauve     = '#cba6f7',
    red       = '#f38ba8',
    maroon    = '#eba0ac',
    peach     = '#fab387',
    yellow    = '#f9e2af',
    green     = '#a6e3a1',
    teal      = '#94e2d5',
    sky       = '#89dceb',
    sapphire  = '#74c7ec',
    blue      = '#89b4fa',
    lavender  = '#b4befe',
    text      = '#cdd6f4',
    subtext1  = '#bac2de',
    subtext0  = '#a6adc8',
    overlay2  = '#9399b2',
    overlay1  = '#7f849c',
    overlay0  = '#6c7086',
    surface2  = '#585b70',
    surface1  = '#45475a',
    surface0  = '#313244',
    base      = '#1f1f28',
    mantle    = '#181825',
    crust     = '#11111b',
}

local dracula = {
    background = '#282a36',
    compose_cursor = '#ffb86c',
    cursor_bg = '#f8f8f2',
    cursor_border = '#f8f8f2',
    cursor_fg = '#282a36',
    foreground = '#f8f8f2',
    scrollbar_thumb = '#44475a',
    selection_bg = 'rgba(26.666668% 27.843138% 35.294117% 50%)',
    selection_fg = 'rgba(0% 0% 0% 0%)',
    split = '#6272a4',
}

local dracula_active_tab = {
    bg_color = '#bd93f9',
    fg_color = '#282a36',
    intensity = 'Normal',
    italic = false,
    strikethrough = false,
    underline = 'None',
}
local dracula_inactive_tab = {
    bg_color = '#282a36',
    fg_color = '#f8f8f2',
    intensity = 'Normal',
    italic = false,
    strikethrough = false,
    underline = 'None',
}
local dracula_inactive_tab_hover = {
    bg_color = '#6272a4',
    fg_color = '#f8f8f2',
    intensity = 'Normal',
    italic = true,
    strikethrough = false,
    underline = 'None',
}
local dracula_new_tab = {
    bg_color = '#282a36',
    fg_color = '#f8f8f2',
    intensity = 'Normal',
    italic = false,
    strikethrough = false,
    underline = 'None',

}
local dracula_new_tab_hover = {
    bg_color = '#ff79c6',
    fg_color = '#f8f8f2',
    intensity = 'Normal',
    italic = true,
    strikethrough = false,
    underline = 'None',
}

local colorscheme = {
    foreground = dracula.foreground,
    background = dracula.background,
    cursor_bg = dracula.cursor_bg,
    cursor_border = dracula.cursor_border,
    cursor_fg = dracula.cursor_fg,
    selection_bg = dracula.selection_bg,
    selection_fg = dracula.selection_fg,
    ansi = {
        '#21222c',
        '#ff5555',
        '#50fa7b',
        '#f1fa8c',
        '#bd93f9',
        '#ff79c6',
        '#8be9fd',
        '#f8f8f2',
    },
    brights = {
        '#6272a4',
        '#ff6e6e',
        '#69ff94',
        '#ffffa5',
        '#d6acff',
        '#ff92df',
        '#a4ffff',
        '#ffffff',
    },
    tab_bar = {
        background = '#282a36',
        active_tab = {
            bg_color = dracula_active_tab.bg_color,
            fg_color = dracula_active_tab.fg_color,
        },
        inactive_tab = {
            bg_color = dracula_inactive_tab.bg_color,
            fg_color = dracula_inactive_tab.fg_color,
        },
        inactive_tab_hover = {
            bg_color = dracula_inactive_tab_hover.bg_color,
            fg_color = dracula_inactive_tab_hover.fg_color,
        },
        new_tab = {
            bg_color = dracula_new_tab_hover.bg_color,
            fg_color = dracula_new_tab_hover.fg_color,
        },
        new_tab_hover = {
            bg_color = dracula_new_tab.bg_color,
            fg_color = dracula_new_tab.fg_color,
            italic = true,
        },
    },
    visual_bell = dracula.foreground,
    scrollbar_thumb = dracula.scrollbar_thumb,
    split = dracula.split,
    compose_cursor = dracula.compose_cursor,
}

return colorscheme
