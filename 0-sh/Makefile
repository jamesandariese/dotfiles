include ../Makefile.include

install-base:
	mkdir -p $(HOME)/.sh-fragments
	ln -sfh $(CURDIR)/source.sh $(HOME)/.sh-fragments/source.sh

install-common: install-base
	ln -sfh $(CURDIR)/common $(HOME)/.sh-fragments/common

install-Darwin: install-common $(HOME)/.zshrc
	ln -sfh $(CURDIR)/darwin $(HOME)/.sh-fragments/darwin

$(HOME)/.zshrc: zshrc
	ln -sfh $(CURDIR)/zshrc $(HOME)/.zshrc
