include Makefile.vars

define maker
	$(MAKE) -C $(1) install


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
	$(foreach mkf,$(wildcard */Makefile),$(call maker,$(mkf:%/Makefile=%)))

update:
	git submodule foreach git fetch
	git submodule foreach git merge --ff main
