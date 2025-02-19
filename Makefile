DOCKER = $(shell which docker)

COMPOSE_FILE ?= compose.yml
COMPOSE_UP = $(DOCKER) compose -f $(COMPOSE_FILE) up -d

up:
	@$(COMPOSE_UP)

up-prod:
	@$(MAKE) up COMPOSE_FILE=compose-prod.yml
