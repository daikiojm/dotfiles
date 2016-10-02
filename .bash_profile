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

##--------------------
# alias 
##--------------------
# 尊師スタイルのon/off
alias onkeyboard="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"
alias offkeyboard="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"
# ls
alias ls="ls --color"

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
PS1='\[\033[36m\]\u \[\033[0m\]\[\033[32m\]\w \[\033[0m\]\[\033[34m\]\t \[\033[31m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '


##--------------------
# CLIでmacVimを使う
##--------------------
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
  alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
fi
