DOTFILES_DIR := ~/dotfiles

.PHONY: all
all: symlinks zplug-init
symlinks:
	ln -s $(DOTFILES_DIR)/.zshrc ~/.zshrc
	ln -s $(DOTFILES_DIR)/.vimrc ~/.vimrc
	ln -s $(DOTFILES_DIR)/.gitconfig ~/.gitconfig
	ln -s $(DOTFILES_DIR)/.gitignore_global ~/.gitconfig
	ln -s $(DOTFILES_DIR)/.gitmessage.txt ~/.gitconfig
	ln -s $(DOTFILES_DIR)/.editorconfig ~/.editorconfig
zplug-init:
	git clone https://github.com/zplug/zplug ~/.zplug
