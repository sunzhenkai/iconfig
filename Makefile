.PHONY: starship nvim kitty alacritty starship tmux

TIMESTAMP := $(shell date +%s)
PWD := $(shell pwd)

define backup_config
	@if [ ! -z "$(1)" ] && [ -e $(1) ]; then mv $(1) $(1)-$(TIMESTAMP); fi
endef

define install_config
	@$(call backup_config,$(2))
	@ln -s $(PWD)/$(1) $(2)
endef

starship:
	$(call install_config,starship/starship.toml,~/.config/starship.toml)
nvim:
	$(call install_config,nvim,~/.config/nvim)
kitty:
	$(call install_config,kitty,~/.config/kitty)
tmux:
	$(call install_config,tmux,~/.tmux)
	$(call install_config,tmux/tmux.conf,~/.tmux.conf)
	$(call install_config,tmux/tmux.conf.local,~/.tmux.conf.local)
