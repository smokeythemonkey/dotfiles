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

# Abbreviations
abbr -a rmi rm -i
abbr -a aptud sudo apt update && apt list --upgradeable
abbr -a aptug sudo apt upgrade -y
abbr -a aptin sudo apt -y install 
abbr -a aptrm sudo apt -y remove 
abbr -a ls ls -lah --color
