# Abbreviations and Aliases
abbr rmi rm -i
abbr rmf rm -rf

# abbr ls exa --time-style=long-iso --group-directories-first --icons --no-permissions --no-user -l
alias ls="exa"
alias l="exa -l --all --group-directories-first --icons --time-style=long-iso"
alias lt="exa -T --level=2 --group-directories-first"
alias llt="exa -lT --level=2 --group-directories-first"
alias lT="exa -T --level=4 --group-directories-first"

abbr df df -H
abbr du dust

abbr asdf rtx


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
abbr sshkeygen ssh-keygen -t ed25519 (whoami)@(hostname)-(date -I) -f ~/.ssh/

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

# zellij 
abbr zz zellij
alias zp="zellij action new-tab -l ~/.config/zellij/layouts/project_explorer.kdl"
alias zmon="zellij action new-tab -l ~/.config/zellij/layouts/monitor.kdl"
