BLACK        := $(shell tput setaf 0)
RED          := $(shell tput setaf 1)
GREEN        := $(shell tput setaf 2)
YELLOW       := $(shell tput setaf 3)
LIGHTPURPLE  := $(shell tput setaf 4)
PURPLE       := $(shell tput setaf 5)
BLUE         := $(shell tput setaf 6)
WHITE        := $(shell tput setaf 7)
BOLD 		 := $(shell tput bold)
RESET := $(shell tput sgr0)

##@ Prerequesites
.PHONY: install_tools
install_tools: ## Install all the necessary tools
	$(call info_colors,green,👏 Installing Precommit)
	@brew install pre-commit
	$(call info_colors,blue,👏 Installing Terraform Docs)
	@brew install terraform-docs
	$(call info_colors,purple,👏 Installing Standard-Version)
	npm install -g standard-version




.PHONY: colors
##@ Support
colors: ## show all the colors
	$(call info_colors,yellow,Display all colors)

	@echo "${BLACK}BLACK${RESET}"
	@echo "${RED}RED${RESET}"
	@echo "${GREEN}GREEN${RESET}"
	@echo "${YELLOW}YELLOW${RESET}"
	@echo "${LIGHTPURPLE}LIGHTPURPLE${RESET}"
	@echo "${PURPLE}PURPLE${RESET}"
	@echo "${BLUE}BLUE${RESET}"
	@echo "${WHITE}WHITE${RESET}"
	@echo "${BOLD}BOLD${RESET}"

## Upper case
UC = $(shell echo '$1' | tr '[:lower:]' '[:upper:]')

define info_colors
	$(info $(BOLD)$($(call UC,$1))$(2)$(RESET))
endef

.PHONY: help
##@ Help
help: ## Displays the list of functions
	$(call info_colors,purple,❓ Help)
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
