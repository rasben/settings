MAKEFILE_DIR = $(shell pwd)
CUSTOM_DIR = '_custom'

setup-custom:
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cl ~/cl  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cla ~/cla  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cls ~/cls  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/clsa ~/clsa  
setup-slate:
	ln -s $(MAKEFILE_DIR)/slate/.slate ~/.slate
setup-vim:
	ln -s $(MAKEFILE_DIR)/vim/.vimrc ~/.vimrc
	ln -s $(MAKEFILE_DIR)/vim/.vim ~/.vim
setup-git:
	ln -s $(MAKEFILE_DIR)/git/.gitconfig ~/.gitconfig
	git clone git@github.com:reload/reload-ssh-config.git ~/.ssh/reload-ssh-config
setup-zsh:
	ln -s $(MAKEFILE_DIR)/zsh/.zshrc ~/.zshrc
setup-iterm2:
	ln -s $(MAKEFILE_DIR)/iterm2 ~/iterm2
setup-dirs:
	mkdir -p ~/code/
setup: setup-dirs setup-custom setup-slate setup-vim setup-git setup-zsh setup-iterm2

