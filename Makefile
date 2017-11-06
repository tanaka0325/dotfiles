DOTFILES_DIR := ~/dotfiles

.PHONY: all
all: symlinks zplug-init
symlinks:
	ln -s $(DOTFILES_DIR)/.zshrc ~/.zshrc
	ln -s $(DOTFILES_DIR)/.vimrc ~/.vimrc
	ln -s $(DOTFILES_DIR)/git/.gitconfig ~/.gitconfig
	ln -s $(DOTFILES_DIR)/git/.gitignore_global ~/.gitignore_global
	ln -s $(DOTFILES_DIR)/git/.gitmessage.txt ~/.gitmessage.txt
	ln -s $(DOTFILES_DIR)/.editorconfig ~/.editorconfig
zplug-init:
	git clone https://github.com/zplug/zplug ~/.zplug
.PHONY: clean
clean:
 rm -rf ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore_global ~/.gitmessage.txt ~/.editorconfig ~/.zplug
