DOCKER = $(shell which docker)

COMPOSE?=$(DOCKER) compose -f docker-compose.yml
COMPOSE_PROD=$(COMPOSE) -f docker-compose.prod.yml

up:
	$(COMPOSE) build --force-rm
	$(COMPOSE) up -d
	sh ./scripts/init-products.sh

up-prod:
	$(COMPOSE_PROD) up -d

down:
	$(COMPOSE) down

down-prod:
	$(COMPOSE_PROD) down
