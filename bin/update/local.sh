#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}
cd ../..

composer update apto-one/core

# update database
php bin/console doctrine:schema:validate
php bin/console doctrine:schema:update --dump-sql

echo "Do you want to execute the above db queries? (Y/n)"
read EXECUTE_DB_QUERIES

if [ ${EXECUTE_DB_QUERIES} = "Y" ];
then
  php bin/console doctrine:schema:update --force
  php bin/console apto:migrate:custom-properties-uuids
fi
