.PHONY: help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/: ## / : /'

## TOOLS FOR DEVELOPMENT ##

.PHONY: dev
dev: ## Run dev environnment
	bundle exec rails s -p 3000

.PHONY: puma
puma: ## Run puma environnment (faster than dev, no file reload)
	bundle exec puma -C config/puma.rb

.PHONY: kill
kill: ## Force kill of dev server
	-@(lsof -i tcp:3007 -ac ruby -t | xargs kill -9) >/dev/null

.PHONY: console
console: ## Run console
	bundle exec rails c