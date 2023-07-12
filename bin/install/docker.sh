#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}
cd ../..

# set git config
echo "set git config"
git config core.longpaths true
git config core.autocrlf input
git config core.ignorecase false

echo "copy ignored files"
cp -r _gitignore_/. .

echo "create local env file"
echo "APTO_INSTALLER=disabled
SA_HASH='\$2y\$13\$0EQamcJkuBdoAACfmfZXfuhyiQBWcZU/KLJ4kOjMyJYBCPie9MPNe'
DATABASE_URL='mysqli://apto:apto@apto-mariadb-service:3306/apto?serverVersion=mariadb-10.6.4'
APTO_CLIENT_ENVIRONMENT='local'" > .env.local

echo "building docker"
docker-compose --env-file .env.docker down
docker-compose --env-file .env.docker up -d --build

echo "composer install"
docker-compose --env-file .env.docker run --rm apto-apache-service composer install
docker-compose --env-file .env.docker run --rm apto-apache-service php bin/console doctrine:schema:update --force

echo "npm install and build"
docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'npm install && npm run local-frontend'
docker-compose --env-file .env.docker run --rm apto-node-service sh -c 'cd _client-deprecated_ && npm install && npm run local-backend'
