# set -Ux WEZTERM_CONFIG_FILE '$HOME/.config/wezterm/wezterm.lua'
if status is-interactive
#  eval (zellij setup --generate-auto-start fish | string collect)
end

set -U fish_greeting

# init zoxide
zoxide init fish | source
set -Ux _ZO_ECHO 1

# init starship prompt
starship init fish | source

# Created by `pipx` on 2022-01-16 14:58:58
set PATH $PATH $HOME/.local/bin

# Abbreviations
abbr rmi rm -i
abbr rmf rm -rf

abbr ls exa --time-style=long-iso --group-directories-first --icons --no-permissions --no-user -l
abbr df df -H
abbr du dust

abbr asdf rtx
abbr zz zellij

# system update
alias system-update="sudo nala update && sudo nala upgrade && pacstall -Up"

# Nala
alias apt="nala"
alias aptud="sudo nala update && nala list --upgradeable"
abbr aptls nala list --upgradeable
abbr aptug sudo nala upgrade -y
abbr aptin sudo nala install -y
abbr aptrm sudo nala remove -y
abbr aptpg sudo nala purge
abbr aptar sudo nala autoremove
abbr aptac nala autoclean

# linode cli
abbr lin linode-cli

# dfu-programmer
abbr dfuerase dfu-programmer atmega32u4 erase
abbr dfuflash dfu-programmer atmega32u4 flash
abbr qmkstm compile -kb lily58 -km smokeythemonkey

# SSH
alias sshhosts='rg "^Host" $HOME/.ssh/config'

# Disk
alias disks='lsblk -o HOTPLUG,NAME,SIZE,MODEL,TYPE | awk "NR == 1 || /disk/"'

# Window Class
alias window-class="xprop"

# CLI tools
alias cat="bat"


# web-search
alias ddg="web-search duckduckgo"
alias sof="web-search stackoverflow"
alias yts="web-search youtube"

rtx activate fish | source
fish_add_path $HOME/.local/share/rtx/shims
