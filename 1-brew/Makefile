include ../Makefile.include

install-Darwin:
	[ -d $(HOME)/homebrew ] || git clone https://github.com/Homebrew/brew $(HOME)/homebrew
	eval "$$($$HOME/homebrew/bin/brew shellenv)" ;\
	brew update --force --quiet ;\
	chmod -R go-w "$$(brew --prefix)/share/zsh"

clean:
	rm -rf homebrew
