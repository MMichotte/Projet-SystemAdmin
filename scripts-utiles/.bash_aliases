#System shortcuts
#----------------
alias c='clear'
#----------------
#Docker shortcuts
#----------------
alias rmcont='docker rm -f $(docker ps -a -q)'
alias lscont='docker container ps -a'
alias lsima='docker image ls'
alias startUser='./VPS-Morgan/Users/startUser'