include ../Makefile.include

export HOMEBREW_CASK_OPTS = --appdir=$(HOME)/Applications --fontdir=$(HOME)/Library/Fonts

Brewfile.lock.json: Brewfile | $(HOME)/homebrew
	brew bundle install

$(HOME)/homebrew:
	[ -d $(HOME)/homebrew ] || git clone https://github.com/Homebrew/brew $(HOME)/homebrew
	[ $${FULL} ] || [ ! -d $(HOME)/homebrew ] || exit 0 \
	&& eval "$$($$HOME/homebrew/bin/brew shellenv)" \
	&& brew update --force --quiet \
	&& 	chmod -R go-w "$$(brew --prefix)/share/zsh"

install-Darwin: $(HOME)/homebrew Brewfile.lock.json

clean:
	@echo ABOUT TO DELETE YOUR HOMEBREW FOLDER
	@echo CTRL-C TO ABORT
	sleep 20
	rm -rf $(HOME)/homebrew
