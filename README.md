# Setup

Exec the following command.

```
$ ./setup.sh
```

# SSH Key Gen & Register to GitHub

Create ssh keys with RSA.

```
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa -C "daiking.ca2@gmail.com" -f "daikiojm_rsa"
$ chmod 600 daikiojm_rsa
$ ssh-add ~/.ssh/daikiojm_rsa
```

Copy to clipboard.

```
$ cat ~/.ssh/daikiojm_rsa.pub | pbcopy
```

Register this on https://github.com/settings/ssh .

Test connection to github.

```
$ ssh -T git@github.com
```

# GPG Key Gen & Register to GitHub

Create a signature with GnuPG.

```
$ gpg --full-generate-key
```

Check key.

```
$ gpg --list-secret-keys
```

Register GPG public key in GitHub.

Check ID.

```
$ gpg --list-secret-keys --keyid-format LONG
```

Confirm key contents.

```
$ gpg --armor --export <ID> | pbcopy
```

Copy between a BEGIN and a END.

Register this on https://github.com/settings/gpg/new .

refs: https://4to.pics/article/post/92

# Others

## Terminal

### Theme

Download Solarized from GitHub.

```
$ git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
```

and Import into Terminal.app preferences.

### Font

Install necessary fonts for power line theme.

```
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
```

and Set `Meslo LG S Regular for Powerline 13 pt.` into Terminal.app preferences.

## Karabiner

Download from https://pqrs.org/osx/karabiner and Install.

## Visual Studio Code 

Backup extended package list.

```
$ cp $HOME/Library/Application\ Support/Code/User/keybindings.json ./vscode/keybindings.json 
$ cp $HOME/Library/Application\ Support/Code/User/settings.json ./vscode/settings.json
$ code --list-extensions > ./vscode/extensions
``` 

Restoring extended package list.

```
$ cp ./vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
$ cp ./vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json 
$ ./vscode/installExtensions.sh
```

## KeyRepeat

Check current KeyRepeat setting.

```
$ defaults read -g InitialKeyRepeat
$ defaults read -g KeyRepeat
```

Set custom KeyRepeat setting.

```
$ defaults write -g InitialKeyRepeat -int 11
$ defaults write -g KeyRepeat -int 1
```

https://dev.classmethod.jp/tool/mac-keyboard-speed-2/