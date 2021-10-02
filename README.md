# Setup

Clone this repository.

```bash
$ xcode-select --install
$ cd
$ git clone https://github.com/daikiojm/dotfiles.git
$ cd dotfiles
```

Exec the following command.

```bash
$ make
```

# SSH Key Gen & Register to GitHub

Create ssh keys with RSA.

```bash
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa -C "daiking.ca2@gmail.com" -f "daikiojm_rsa"
$ chmod 600 daikiojm_rsa
$ ssh-add ~/.ssh/daikiojm_rsa
```

Copy to clipboard.

```bash
$ cat ~/.ssh/daikiojm_rsa.pub | pbcopy
```

Register this on https://github.com/settings/ssh .

Test connection to github.

```bash
$ ssh -T git@github.com
```

# GPG Key Gen & Register to GitHub

Create a signature with GnuPG.

```bash
$ gpg --full-generate-key
```

Check key.

```bash
$ gpg --list-secret-keys
```

Register GPG public key in GitHub.

Check ID.

```bash
$ gpg --list-secret-keys --keyid-format LONG
```

Confirm key contents.

```bash
$ gpg --armor --export <ID> | pbcopy
```

Copy between a BEGIN and a END.

Register this on https://github.com/settings/gpg/new .

refs: https://4to.pics/article/post/92

Set gpg key to gitconfig

```bash
$ git config --global user.signingkey <ID>
```

# Others

## Terminal

### Theme

Download Solarized from GitHub.

```bash
$ git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
```

and Import into Terminal.app preferences.

### Font

Install necessary fonts for power line theme.

```bash
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
```

and Set `Meslo LG S Regular for Powerline 13 pt.` into Terminal.app preferences.

## Karabiner

Download from https://pqrs.org/osx/karabiner and Install.

## Visual Studio Code 

~~Backup extended package list.~~

```bash
$ cp $HOME/Library/Application\ Support/Code/User/keybindings.json ./vscode/keybindings.json 
$ cp $HOME/Library/Application\ Support/Code/User/settings.json ./vscode/settings.json
$ code --list-extensions > ./vscode/extensions
``` 

~~Restoring extended package list.~~

```bash
$ cp ./vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
$ cp ./vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json 
$ ./vscode/installExtensions.sh
```

Use [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) instead.

## KeyRepeat

Check current KeyRepeat setting.

```bash
$ defaults read -g InitialKeyRepeat
$ defaults read -g KeyRepeat
```

Set custom KeyRepeat setting.

```bash
$ defaults write -g InitialKeyRepeat -int 11
$ defaults write -g KeyRepeat -int 1
```

https://dev.classmethod.jp/tool/mac-keyboard-speed-2/