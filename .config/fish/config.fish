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

# Aliases
alias rmi="rm -i"
alias aptud="sudo apt update"
alias aptug="sudo apt upgrade -y"
alias apti="sudo apt -y install "
alias aptr="sudo apt -y remove "
alias ls="ls -lah --color"
