.PHONY: all starship nvim kitty alacritty starship tmux zellij ghostty zsh git

TIMESTAMP := $(shell date +%s)
PWD := $(shell pwd)

define backup_config
	@if [ ! -z "$(1)" ] && [ -e $(1) ]; then mv $(1) $(1)-$(TIMESTAMP); fi
endef

define install_config
	@$(call backup_config,$(2))
	@ln -s $(PWD)/$(1) $(2)
endef

all: starship nvim kitty tmux alacritty zellij ghostty zsh
starship:
	$(call install_config,starship/starship.toml,~/.config/starship.toml)
nvim:
	$(call install_config,nvim,~/.config/nvim)
kitty:
	$(call install_config,kitty,~/.config/kitty)
tmux:
	$(call install_config,tmux,~/.config/tmux)
	$(call install_config,tmux/tmux.conf,~/.tmux.conf)
	$(call install_config,tmux/tmux.conf.local,~/.tmux.conf.local)
alacritty:
	$(call install_config,alacritty,~/.config/alacritty)
zellij:
	$(call install_config,zellij,~/.config/zellij)
ghostty:
	$(call install_config,ghostty,~/.config/ghostty)
zsh:
	@# firstly, ZSH_CUSTOME sould be set to $HOME/.config/zsh/oh-my-zsh in $HOME/.zshrc
	$(call install_config,zsh,~/.config/zsh)

# personal configs of mine
git:
	$(call install_config,git,~/.config/git)
	@echo "WARN: extra operation should be processed"
	@echo "      append following texts into ~/.gitconfig after [user] scope"
	@echo '[includeIf "gitdir:~/.config/git/gitconfig"]'
	@echo ' path = ~/.config/git/gitconfig'
git-global:
	$(call install_config,git/gitconfig,~/.gitconfig)
