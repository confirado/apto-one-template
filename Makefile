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

cache-clear:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console cache:clear

cache-clear-all:
	docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console cache:clear
	rm -rf var/cache
	rm -rf var/log
	rm -rf .npm/*
	rm -rf .angular/*

