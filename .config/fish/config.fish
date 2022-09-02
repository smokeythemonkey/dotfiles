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
set PATH $PATH /home/awollgarten/.local/bin

# pdm pep582
set -x PYTHONPATH '/home/awollgarten/.local/pipx/venvs/pdm/lib/python3.10/site-packages/pdm/pep582' $PYTHONPATH

# Abbreviations
abbr rmi rm -i
abbr rmf rm -rf
abbr ls ls -lah --color
abbr df df -H

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
abbr aptls nala list --upgradeable
abbr aptug sudo nala upgrade -y
abbr aptin sudo nala install -y
abbr aptrm sudo nala remove -y
abbr aptpg sudo nala purge
abbr aptar sudo nala autoremove
abbr aptac nala autoclean



# Docker containers
# dfu-programmer
abbr dfuerase dfu-programmer atmega32u4 erase
abbr dfuflash dfu-programmer atmega32u4 flash

# SSH
alias sshhosts='grep -P "^Host" $HOME/.ssh/config'

# Disk
alias disks='lsblk -o HOTPLUG,NAME,SIZE,MODEL,TYPE | awk "NR == 1 || /disk/"'

# Window Class
alias window-class="xprop"

