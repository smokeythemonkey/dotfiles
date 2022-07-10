function sshls --wraps='grep -P "^Host" $HOME/.ssh/config' --description 'alias sshls=grep -P "^Host" $HOME/.ssh/config'
  grep -P "^Host" $HOME/.ssh/config $argv; 
end
