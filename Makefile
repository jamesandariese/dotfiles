include Makefile.vars

define maker
	[ -f $(1)/Makefile.dotfiles -a $(2) = Makefile ] || $(MAKE) -b -f $(2) -C $(1) install


endef

all:
	@echo --------------------------------------------------------------------------------
	@echo Run make install to install everything.
	@echo
	@echo To install individual components, run make install from the folder of the
	@echo component.
	@echo --------------------------------------------------------------------------------
	@exit 1

install:
	$(foreach mkf,$(wildcard */Makefile.dotfiles),$(call maker,$(mkf:%/Makefile.dotfiles=%),Makefile.dotfiles))
	$(foreach mkf,$(wildcard */Makefile),$(call maker,$(mkf:%/Makefile=%),Makefile))
