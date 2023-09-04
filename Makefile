build:
	docker-compose --env-file .env.docker down
	docker-compose --env-file .env.docker up -d --build

start:
	docker-compose --env-file .env.docker up -d

down:
	docker-compose --env-file .env.docker down

restart:
	docker-compose --env-file .env.docker down
	docker-compose --env-file .env.docker up -d

composer-dump:
	docker-compose --env-file .env.docker run --rm apto-apache-service composer dump-autoload
composer-install:
	docker-compose --env-file .env.docker run --rm apto-apache-service composer install

doctrine-validate:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console doctrine:schema:validate
doctrine-update-dump:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console doctrine:schema:update --dump-sql
doctrine-update:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console doctrine:schema:update --force

cache-clear:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console cache:clear

cache-clear-all:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console cache:clear
	rm -rf var/cache
	rm -rf var/log
	rm -rf .npm/*
	rm -rf .angular/*

run-dev:
	docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'npm run local-frontend'
	docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'cd _client-deprecated_ && npm run local-backend'

run-frontend-dev:
	docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'npm run local-frontend-dev'

run-backend-dev:
	docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'cd _client-deprecated_ && npm run local-backend'
