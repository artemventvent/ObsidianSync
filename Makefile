PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
USER_HOME = $(shell bash -c 'eval echo ~$$SUDO_USER')
CONFDIR = $(USER_HOME)/.config/obsync

install:
	@echo "Installing obsync..."
	@sudo mkdir -p $(BINDIR)
	@sudo install -m 755 obsync $(BINDIR)/obsync
	@if [ -n "$(USER_HOME)" ]; then \
		echo "Creating config for user: $$SUDO_USER"; \
		mkdir -p "$(CONFDIR)"; \
		if [ -f "config.example" ]; then \
			install -m 644 config.example "$(CONFDIR)/config"; \
		else \
			touch "$(CONFDIR)/config"; \
		fi; \
		chown -R $$SUDO_UID:$$SUDO_GID "$(CONFDIR)"; \
		echo "Config: $(CONFDIR)/config"; \
	else \
		echo "Error: Run with 'sudo' to detect user!"; \
		exit 1; \
	fi

	@echo "Installation complete."

uninstall:
	@sudo rm -f $(BINDIR)/obsync
	@rm -rf $(CONFDIR)
	@echo "Uninstalled."

.PHONY: install uninstall