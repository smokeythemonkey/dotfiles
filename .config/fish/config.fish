if status is-interactive
    # Commands to run in interactive sessions can go here
end


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
abbr -a rmi rm -i
abbr -a rmf rm -rf
abbr -a ls ls -lah --color
abbr -a df df -H

# Apt
abbr -a aptud sudo apt update
abbr -a aptug sudo apt upgrade -y
abbr -a aptin sudo apt -y install 
abbr -a aptrm sudo apt -y remove 
abbr -a aptls apt list --upgradable

# Docker containers
# dfu-programmer
abbr -a dfuerase dfu-programmer atmega32u4 erase
abbr -a dfuflash dfu-programmer atmega32u4 flash

# SSH
alias sshhosts='grep -P "^Host" $HOME/.ssh/config'

# Disk
alias disks='lsblk -o HOTPLUG,NAME,SIZE,MODEL,TYPE | awk "NR == 1 || /disk/"'
