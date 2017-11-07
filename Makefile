MAKEFILE_DIR = $(shell pwd)
CUSTOM_DIR = '_custom'

setup-custom:
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cl ~/cl  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cla ~/cla  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/cls ~/cls  
	ln -s $(MAKEFILE_DIR)/$(CUSTOM_DIR)/clsa ~/clsa  
setup-docker-sync:
	ln -s $(MAKEFILE_DIR)/docker-sync/.docker-sync-global.yml ~/.docker-sync-global.yml
setup-slate:
	ln -s $(MAKEFILE_DIR)/slate/.slate ~/.slate
setup-vim:
	ln -s $(MAKEFILE_DIR)/vim/.vimrc ~/.vimrc
	ln -s $(MAKEFILE_DIR)/vim/.vim ~/.vim
setup-git:
	ln -s $(MAKEFILE_DIR)/git/.gitconfig ~/.gitconfig
setup-zsh:
	ln -s $(MAKEFILE_DIR)/zsh/.zshrc ~/.zshrc
setup: setup-custom setup-docker-sync setup-slate setup-vim setup-git setup-zsh

