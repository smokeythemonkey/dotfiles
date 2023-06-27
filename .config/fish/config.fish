# set -Ux WEZTERM_CONFIG_FILE '$HOME/.config/wezterm/wezterm.lua'
if status is-interactive
  eval (zellij setup --generate-auto-start fish | string collect)
end

set -U fish_greeting

# init zoxide
zoxide init fish | source
set -Ux _ZO_ECHO 1

# init starship prompt
starship init fish | source

# Created by `pipx` on 2022-01-16 14:58:58
set PATH $PATH $HOME/.local/bin


rtx activate fish | source
fish_add_path $HOME/.local/share/rtx/shims
