#! /bin/sh

echo "=== Restore VSCode Config"
$ cp $(dirname pwe)/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
$ cp $(dirname pwe)/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json 

extensions=$(cat $(dirname pwe)/vscode/extensions)

for extension in $extensions; do
  echo "install $extension ..."
  code --install-extension $extension
done
