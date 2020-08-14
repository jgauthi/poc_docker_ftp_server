help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

up: ## Launch docker
	@docker-compose up -d

stop: ## Stop docker
	@docker-compose stop

install: config-files up ## Installation

uninstall: stop ## Remove docker containers
	@docker-compose rm -vf
	@rm -f .env

config-files:
ifeq (,$(wildcard .env))
	@cp .env.dist .env
endif
