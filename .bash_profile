##--------------------
# export
##--------------------
export PATH="/usr/local/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
# node_modules
export NODE_PATH=/usr/local/lib/node_modules
# lsのカラースキーム
export LS_COLORS="${LS_COLORS}:di=01;36"

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

##--------------------
# alias
##--------------------
# 尊師スタイルのon/off
alias onkeyboard="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"
alias offkeyboard="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"

# aws credentials chenge
alias aws-default="export AWS_DEFAULT_PROFILE=default"
alias aws-vsv1="export AWS_DEFAULT_PROFILE=vsv1"
alias aws-vsv2="export AWS_DEFAULT_PROFILE=vsv2"
alias aws-infra="export AWS_DEFAULT_PROFILE=infra"
alias aws-personal="export AWS_DEFAULT_PROFILE=personal"

#cheetsheet shortcut
alias che="atom ~/Dropbox/shortcut/cheatsheet"

# ls
#alias ls="ls --color"
alias ls="ls -G"

# cd Documents
alias d="cd /Users/$USER/Documents/"

##--------------------
# .bashrcの読み込み
##--------------------
# if [ -f ~/.bashrc ] ; then
# . ~/.bashrc
# fi

##--------------------
# gitのカレントブランチ取得
##--------------------
git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

##--------------------
# $の行の装飾
##--------------------
#PS1='——\n\[\033[36m\]\u \[\033[0m\]\[\033[32m\]\w \[\033[0m\]\[\033[34m\]\t \[\033[31m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '
#export PS1="[\[\e[1;34m\]\u\[\e[00m\]@\h:\W]\$ "

# 現在安定版
PS1='\[\033[36m\]\u \[\033[0m\]\[\033[32m\]\w \[\033[0m\]\[\033[34m\]\t \[\033[31m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '

# ↓ユーザー名表示しない 一時的
# PS1=' \[\033[0m\]\[\033[32m\]\w \[\033[0m\]\[\033[34m\]\t \[\033[31m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '


##--------------------
# CLIでmacVimを使う
##--------------------
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
  alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
fi

##--------------------
# カラースキーム
# 参考
# http://qiita.com/Humangas/items/848f0318dfc3c6f5b8e2
##--------------------
eval $(gdircolors ~/.dircolors-solarized)


##--------------------
# Bash completion
# $ brew install bash-completion
##--------------------
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh
