####################
# shell
####################
set -g theme_date_format "+%Y-%m-%d %H:%M:%S"

####################
# Path
####################

# Node
set -x PATH $PATH ~/.nodebrew/current/bin

# Go tools
set -x PATH $PATH ~/bin

# cli tools
set -x PATH $PATH ~/.local/bin

set -x LANG "ja_JP.UTF-8"

# Fish

# Don't show the greeting message on fish boot.
set -x fish_greeting ""
# Don't let fish masquerade itself as other shells.
set -x SHELL (which fish)
# Help out programs spawning editors based on $EDITOR.
set -x EDITOR nvim
set -x BROWSER open

# GPG
set -x GPG_TTY (tty)

# pyenv & Python
. (pyenv init - | psub)
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $PATH (python -m site --user-base)/bin

# Go
set -x GOPATH $HOME

# Tex
set -x PATH $PATH /Library/Tex/texbin

####################
# alias
####################

# for homebrew with pyenv
# @see: https://qiita.com/takc923/items/45386905f70fde9af0e7
alias brew="env PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

# startup bash
alias b="bash"

# shortcut directory
alias d="cd ~/Documents/"
alias en="cd ~/env/"
alias pj="cd-gitroot"

# for docker command
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dp="docker ps"

# exit command
alias e="exit"

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; . '~/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
