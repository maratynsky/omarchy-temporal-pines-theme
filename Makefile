THEME_DIR ?= $(HOME)/.config/omarchy/themes/temporal-pines

.PHONY: install
install:
	mkdir -p "$(THEME_DIR)/backgrounds"
	cp colors.toml "$(THEME_DIR)/colors.toml"
	cp backgrounds/*.png "$(THEME_DIR)/backgrounds/"
	omarchy theme set temporal-pines
