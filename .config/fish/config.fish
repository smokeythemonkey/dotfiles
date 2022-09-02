set -Ux Z_DATA "$HOME/.local/share/z/data"
set -Ux Z_DATA_DIR "$HOME/.local/share/z"
set -Ux Z_EXCLUDE "$HOME"
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting "🐟"

# init asdf-vm
source ~/.asdf/asdf.fish

# init starship prompt
starship init fish | source

# direnv hook
direnv hook fish | source

# Created by `pipx` on 2022-01-16 14:58:58
set PATH $PATH $HOME/.local/bin

# pdm pep582
set -x PYTHONPATH '$HOME/.local/pipx/venvs/pdm/lib/python3.10/site-packages/pdm/pep582' $PYTHONPATH

# Abbreviations
abbr -a rmi rm -i
abbr -a rmf rm -rf
abbr -a ls ls -lah --color
abbr -a df df -H

# Apt
# abbr aptud sudo apt update
# abbr aptug sudo apt upgrade -y
# abbr aptin sudo apt -y install 
# abbr aptrm sudo apt  remove 
# abbr aptls apt list --upgradable
# abbr aptpg sudo apt purge
# abbr aptar sudo apt autoremove
# abbr aptac apt autoclean

# Nala
alias apt="nala"
alias aptud="sudo nala update && nala list --upgradeable"
abbr -a aptls nala list --upgradeable
abbr -a aptug sudo nala upgrade -y
abbr -a aptin sudo nala install -y
abbr -a aptrm sudo nala remove -y
abbr -a aptpg sudo nala purge
abbr -a aptar sudo nala autoremove
abbr -a aptac nala autoclean



# Docker containers
# dfu-programmer
abbr -a dfuerase dfu-programmer atmega32u4 erase
abbr -a dfuflash dfu-programmer atmega32u4 flash

# SSH
alias sshhosts='grep -P "^Host" $HOME/.ssh/config'

# Disk
alias disks='lsblk -o HOTPLUG,NAME,SIZE,MODEL,TYPE | awk "NR == 1 || /disk/"'

# Window Class
alias window-class="xprop"

# CLI tools
alias cat="bat"
