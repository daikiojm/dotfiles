####################
# エイリアス系
####################

# ターミナルの表示クリア
alias c="clear"

# Documentsフォルダへのショートカット
alias d="cd ~/Documents/"

# tmuxのショートカット
alias t="tmux"

# lsのショートカット
alias l="ls -al"

# カレントリポジトリのGitHubを開く
alias gh="hub browse"

# mongoDBの起動
alias mongodb="sudo mongod --dbpath /var/lib/mongodb --logpath /var/log/mongodb.log"

####################
# Path
####################

set -U NODE_PATH $HOME/.nodebrew/current/lib/node_modules

set -U fish_user_paths $HOME/.nodebrew/current/bin $fish_user_paths

set -U fish_user_paths $HOME/.nodebrew/current/lib/node_modules $fish_user_paths
