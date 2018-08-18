.PHONY: all

. := $(PWD)

all: \
	symlink \
	fish \
	brew \
	node \

symlink:
	ln -sf $(.)/.editorconfig $(HOME)/.editorconfig
	ln -sf $(.)/.gitconfig $(.)/.gitignore $(HOME)
	ln -sf $(.)/.tmux.conf $(HOME)
	ln -sf $(.)/.vimrc $(HOME)
	ln -sf $(.)/.gnupg/gpg-agent.conf $(HOME)/.gnupg/gpg-agent.conf
	ln -sf $(.)/.gnupg/gpg.conf $(HOME)/.gnupg/gpg.conf
	ln -sf $(.)/.config/fish/config.fish $(HOME)/.config/fish/config.fish
	ln -sf $(.)/.config/fish/fishfile $(HOME)/.config/fish/fishfile
	[ -e $(HOME)/.config/karabiner/assets ] || ln -sf $(.)/.config/karabiner/assets $(HOME)/.config/karabiner/assets
	ln -sf $(.)/.config/karabiner/karabiner.json $(HOME)/.config/karabiner/karabiner.json
	[ -e $(HOME)/.config/powerline ] || ln -sf $(.)/.config/powerline $(HOME)/.config/powerline

	# fish shell custom functions
	ln -sf $(.)/.config/fish/functions/fish_user_key_bindings.fish $(HOME)/.config/fish/functions/fish_user_key_bindings.fish
	ln -sf $(.)/.config/fish/functions/fco.fish $(HOME)/.config/fish/functions/fco.fish
	ln -sf $(.)/.config/fish/functions/fcoc.fish $(HOME)/.config/fish/functions/fcoc.fish

fish:
	bash lib/fish.sh

brew:
	bash lib/brew.sh

node:
	bash lib/node.sh

backup-vscode-config:
	bash lib/backup-vscode-config.sh

restore-vscode-config:
	bash lib/restore-vscode-config.sh
