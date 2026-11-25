THEME_DIR ?= $(HOME)/.config/omarchy/themes/temporal-pines

.PHONY: install
install:
	mkdir -p "$(THEME_DIR)/backgrounds"
	@if [ -f "$(THEME_DIR)/backgrounds/04-lone-pine-mall.png" ]; then \
		mkdir -p "$(THEME_DIR)/retired-backgrounds"; \
		mv "$(THEME_DIR)/backgrounds/04-lone-pine-mall.png" "$(THEME_DIR)/retired-backgrounds/04-lone-pine-mall-$$(date +%s).png"; \
	fi
	cp colors.toml "$(THEME_DIR)/colors.toml"
	cp backgrounds/*.png "$(THEME_DIR)/backgrounds/"
	omarchy theme set temporal-pines
