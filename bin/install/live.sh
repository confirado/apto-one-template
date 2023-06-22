#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}
cd ../..

# define executables
PHP_EXECUTABLE=$1

# set default php executable
if [ -z "$1" ];
then
  PHP_EXECUTABLE=php
fi

# copy git ignored files
echo "copy ignored files"
echo "Copy default web folder? (y/n)"
read COPY_DEFAULT_WEB_FOLDER
if [ ${COPY_DEFAULT_WEB_FOLDER} = "y" ];
then
  cp -r _gitignore_/. .
else
  cp -r _gitignore_/client/. client/
  cp -r _gitignore_/config/. config/
  mv web/.htaccess web/.htaccess_backup
  cp _gitignore_/web/.htaccess web/.htaccess
fi

# create local env file
# ask for db name
echo "Database name:"
read DB_NAME
if [ -z "${DB_NAME}" ];
then
  echo "You have to enter a database name."
  exit 0;
fi

# ask for db user
echo "Database user:"
read DB_USER
if [ -z "${DB_USER}" ];
then
  echo "You have to enter a database user."
  exit 0;
fi

# ask for db password
echo "Database password:"
read DB_PASSWORD
if [ -z "${DB_PASSWORD}" ];
then
  echo "You have to enter a database password."
  exit 0;
fi

# ask for db host
echo "Database host (Press Enter for default: localhost):"
read DB_HOST
if [ -z "${DB_HOST}" ];
then
  DB_HOST='localhost'
fi

# ask for db port
echo "Database port (Press Enter for default: 3306):"
read DB_PORT
if [ -z "${DB_PORT}" ];
then
  DB_PORT='3306'
fi

# ask for db version
echo "Database version (Press Enter for default: 5.7):"
read DB_VERSION
if [ -z "${DB_VERSION}" ];
then
  DB_VERSION='5.7'
fi

# ask for client environment
echo "Apto client environment (Press Enter for default: live):"
read APTO_CLIENT_ENVIRONMENT
if [ -z "${APTO_CLIENT_ENVIRONMENT}" ];
then
  APTO_CLIENT_ENVIRONMENT='live'
fi

# ask for public folder
echo "Public folder (Press Enter for default: /):"
read APTO_PUBLIC_FOLDER
if [ -z "${APTO_PUBLIC_FOLDER}" ];
then
  APTO_PUBLIC_FOLDER='/'
fi

# write .env.local file
FILE_ENV_LOCAL=".env.local"
printf "APTO_INSTALLER=disabled\nDATABASE_URL='mysql://%s:%s@%s:%s/%s?serverVersion=%s'\n" ${DB_USER} ${DB_PASSWORD} ${DB_HOST} ${DB_PORT} ${DB_NAME} ${DB_VERSION} > ${FILE_ENV_LOCAL}

if [ ${APTO_CLIENT_ENVIRONMENT} != "live" ];
then
  printf "APTO_CLIENT_ENVIRONMENT=%s\n" ${APTO_CLIENT_ENVIRONMENT} >> ${FILE_ENV_LOCAL}
fi

if [ ${APTO_PUBLIC_FOLDER} != "/" ];
then
  printf "APTO_PUBLIC_FOLDER=%s\n" ${APTO_PUBLIC_FOLDER} >> ${FILE_ENV_LOCAL}
fi

printf "MAILER_DSN='smtp://mail_user:mail_password@mail_host:mail_port'\n" >> ${FILE_ENV_LOCAL}

# install composer
wget https://getcomposer.org/installer
mv installer composer-setup.php
${PHP_EXECUTABLE} composer-setup.php --filename=composer
rm composer-setup.php

# install apto
${PHP_EXECUTABLE} composer install

# update database
${PHP_EXECUTABLE} bin/console doctrine:schema:validate
${PHP_EXECUTABLE} bin/console doctrine:schema:update --dump-sql

echo "Do you want to execute the above db queries? (y/n)"
read EXECUTE_DB_QUERIES

if [ ${EXECUTE_DB_QUERIES} = "y" ];
then
  ${PHP_EXECUTABLE} bin/console doctrine:schema:update --force
fi
