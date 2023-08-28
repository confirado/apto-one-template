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

main_folder_path="."
gitignore_folder="_gitignore_"
env_filename=".env.docker"

# Check if .env.docker file doesn't exist in the main folder
if [ ! -f "$main_folder_path/$env_filename" ]; then
    cp "$gitignore_folder/$env_filename" "$main_folder_path/"
    echo "$env_filename copied."
else
    echo "$env_filename already exists in the main folder."
fi

# Copy all files from _gitignore_ folder except .env.docker
find "$gitignore_folder" -maxdepth 1 -type f ! -name "$env_filename" -exec cp -t "$main_folder_path" {} +

echo "Files copied from $gitignore_folder to $main_folder_path."


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
