# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1


set fish_greeting ''


status is-login; and begin

    # Login shell initialisation


end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- sshnode1 'ssh node@node1.leopard-porgy.ts.net'
    abbr --add -- sshnode2 'ssh node@node2.leopard-porgy.ts.net'
    abbr --add -- sshsyncer 'ssh awol@syncer.leopard-porgy.ts.net'
    abbr --add -- sshvh 'ssh vhserver@vhserver.sheep-mulley.ts.net'
    abbr --add -- tsakb 'sudo tailscale switch abknet.org.github'
    abbr --add -- tsstm 'sudo tailscale switch smokeythemonkey.github'
    abbr --add -- cma 'chezmoi apply'
    abbr --add -- cme 'chezmoi edit'
    abbr --add -- cms 'chezmoi status'

    # Aliases
    alias cat bat
    alias catp 'bat -p'
    alias eza 'eza '\''--group-directories-first'\'' '\''--header'\'''
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'
    alias rmf 'rm -rf'
    alias rmi 'rm - i'
    alias system-update 'sudo nala update && sudo nala upgrade && sudo nala autoremove'
    alias zz zellij
    alias cm chezmoi


    # Interactive shell initialisation
    /usr/bin/zoxide init fish | source

    if test "$TERM" != dumb
        eval (starship init fish)
    end

    atuin init fish | source
    ~/.local/bin/mise activate fish | source

    #/nix/store/kj5k2wvwvqh2vnfndm82dpcr4canwyrn-direnv-2.34.0/bin/direnv hook fish | source


end
