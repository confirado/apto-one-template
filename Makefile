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

refresh:
	rm -rf var/log
	composer dump-autoload
	php bin/console cache:clear
	php bin/console doctrine:schema:update --force


##############################################################
# Cypress
##############################################################
open-cypress:
	npm run-script cypress:open

# Run this for local
open-cypress-dev:
	sed -i 's/\(-cypress\)*//g' .env.local
	php bin/console cache:clear
	php bin/console doctrine:schema:update --force
	@$(MAKE) prepare-cypress-db
	sed -i 's/^DATABASE_URL\(.*:3306\)\([^\?.]*\)\(.*\)/DATABASE_URL\1\2-cypress\3/g' .env.local
	@$(MAKE) prepare-cypress-fixtures
	php bin/console cache:clear
	npm run-script cypress:open:dev

close-cypress:
	sed -i 's/\(-cypress\)*//g' .env.local
	php bin/console doctrine:schema:update --force
	php bin/console cache:clear
	pkill -2 Cypress

prepare-cypress-db:
	php bin/console doctrine:schema:update --force
	php bin/console apto:test:prepare-db

prepare-cypress-fixtures:
	# --append option prevents purging the whole db
	# todo here we run fixtures but as symfony commands and not as symfony fixtures

