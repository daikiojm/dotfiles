####################
# Path
####################

# Node
set -x PATH $PATH ~/.nodebrew/current/bin

set -x LANG "ja_JP.UTF-8"

# set -U NODE_PATH $HOME/.nodebrew/current/lib/node_modules
# set -U fish_user_paths $HOME/.nodebrew/current/bin $fish_user_paths
# set -U fish_user_paths $HOME/.nodebrew/current/lib/node_modules $fish_user_paths

# Fish
set -x fish_greeting ""

# GPG
set -x GPG_TTY (tty)

# Python
. (pyenv init - | psub)


####################
# alias
####################

# startup bash
alias b="bash"

# shortcut Documents
alias d="cd ~/Documents/"

# for git command
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gc="git flow"
alias gl="git log"
alias pull="git pull"
alias push="git push"
alias gs="git stash"
alias gm="git merge"

# use Neovim
alias vim="nvim"

# clear terminal
alias c="clear"


# shortcut tmux
alias t="tmux"

# shortcut ls
alias l="ls -al"

# shortcut open GitHub
alias gh="hub browse"

# start up mongoDB
alias mongodb="sudo mongod --dbpath /var/lib/mongodb --logpath /var/log/mongodb.log"
