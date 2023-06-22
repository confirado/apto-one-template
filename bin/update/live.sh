#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}
cd ../..

# define executables
PHP_EXECUTABLE=$1
GIT_EXECUTABLE=git

# set default php executable
if [ -z "$1" ];
then
  PHP_EXECUTABLE=php
fi

# git pull
echo "Project update"
${GIT_EXECUTABLE} pull origin apto-2-1
echo "Progress: [#----]"

# composer install
echo "Composer install"
${PHP_EXECUTABLE} composer install
echo "Progress: [##---]"

# update database
${PHP_EXECUTABLE} bin/console doctrine:schema:validate
${PHP_EXECUTABLE} bin/console doctrine:schema:update --dump-sql

echo "Do you want to execute the above db queries? (Y/n)"
read EXECUTE_DB_QUERIES

if [ ${EXECUTE_DB_QUERIES} = "Y" ];
then
  ${PHP_EXECUTABLE} bin/console doctrine:schema:update --force
fi
echo "Progress: [###--]"

# clear cache
echo "Clear cache"
rm -Rf var/cache/*
echo "Progress: [#####]"
echo "Done!"
