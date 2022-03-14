include ../Makefile.include

install-Darwin:
	mkdir -p "$(HOME)/.gnupg"
	(: ; \
		echo "# managed by dotfiles" ; \
		echo "default-cache-ttl 600" ; \
		echo "max-cache-ttl 7200" ; \
	  echo 'pinentry-program $(shell brew --prefix)/bin/pinentry-mac'; \
	: ) > "$(HOME)/.gnupg/gpg-agent.conf"
