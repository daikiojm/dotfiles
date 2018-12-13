#! /bin/sh

echo "=== Backup VSCode Config"
cp $HOME/Library/Application\ Support/Code/User/keybindings.json $(dirname pwe)/vscode/keybindings.json 
cp $HOME/Library/Application\ Support/Code/User/settings.json $(dirname pwd)/vscode/settings.json
code --list-extensions > $(dirname pwd)/vscode/extensions
