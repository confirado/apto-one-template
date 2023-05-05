#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}
cd ../..

# set apto project name
APTO_PROJECT_NAME=$1
APTO_DB_NAME=$2

# create local env file
if [ -z "$1" ];
then
  echo "You must enter an apto project name."
  exit 0;
fi

if [ -z "$2" ];
then
  APTO_DB_NAME=$1
fi

# validate parameters
echo "Project directory: ${APTO_PROJECT_NAME}"
echo "Database name    : ${APTO_DB_NAME}"
echo "Are those parameters correct? (y/n)"
read VALIDATE_PARAMETERS

if [ -z "${VALIDATE_PARAMETERS}" ];
then
  exit 0;
fi

if [ ${VALIDATE_PARAMETERS} = "y" ];
then
  echo ""
else
  exit 0;
fi

# ask for macOS
echo "Do you use macOS? (y/n)"
read USE_MAC_OS

if [ -z "${USE_MAC_OS}" ];
then
  exit USE_MAC_OS="n";
fi

# create local env file
if [ ${USE_MAC_OS} = "y" ];
then
  echo "#APP_ENV=dev
#APP_DEBUG=1
APTO_INSTALLER=disabled
SA_HASH='\$2y\$13\$0EQamcJkuBdoAACfmfZXfuhyiQBWcZU/KLJ4kOjMyJYBCPie9MPNe'
DATABASE_URL='mysql://root:123456@localhost:3306/${APTO_DB_NAME}?serverVersion=mariadb-10.6.4'
APTO_CLIENT_ENVIRONMENT='local'
APTO_PUBLIC_FOLDER='/${APTO_PROJECT_NAME}/web'
APTO_IMAGE_MAGICK_PATH='/opt/homebrew/bin/convert'
APTO_GRAPHICS_MAGICK_PATH='/opt/homebrew/bin/convert gm'
MAILER_DSN='smtp://noreply@dev.confirado.de:enter_password_here@sslout.de:465'" > .env.local
else
  echo "#APP_ENV=dev
#APP_DEBUG=1
APTO_INSTALLER=disabled
SA_HASH='\$2y\$13\$0EQamcJkuBdoAACfmfZXfuhyiQBWcZU/KLJ4kOjMyJYBCPie9MPNe'
DATABASE_URL='mysql://root:123456@localhost:3306/${APTO_DB_NAME}?serverVersion=5.7'
APTO_CLIENT_ENVIRONMENT='local'
APTO_PUBLIC_FOLDER='/${APTO_PROJECT_NAME}/web'
MAILER_DSN='smtp://noreply@dev.confirado.de:enter_password_here@sslout.de:465'" > .env.local
fi

# import database
# ask for macOS
echo "Do you want to import default database from repository? (y/n)"
read IMPORT_DATABASE

# create local env file
if [ ${IMPORT_DATABASE} = "y" ];
then
  echo "import database"
  cd _db_

  cp create.template create.sql

  if [ ${USE_MAC_OS} = "y" ];
  then
    sed -i "" "s/###APTO_DB_NAME###/${APTO_DB_NAME}/" create.sql
  else
    sed -i"" "s/###APTO_DB_NAME###/${APTO_DB_NAME}/" create.sql
  fi
  sudo mysql -u root -p123456 -h localhost < create.sql
  sudo mysql -u root -p123456 -h localhost --default-character-set=utf8 ${APTO_DB_NAME} < apto-example-data.sql

  rm -f create.sql
  cd ..
fi

# set git config
echo "set git config"
git config --global core.longpaths true
git config --global core.autocrlf input
git config --global core.ignorecase false

# copy git ignored files
echo "copy ignored files"
cp -r _gitignore_/. .

# composer install
echo "composer install"
COMPOSER_MEMORY_LIMIT=-1 composer install

# npm install
echo "npm install"
npm install
cd _client-deprecated_
npm install
cd ..

# update database
php bin/console doctrine:schema:validate
php bin/console doctrine:schema:update --dump-sql

echo "Do you want to execute the above db queries? (y/n)"
read EXECUTE_DB_QUERIES

if [ ${EXECUTE_DB_QUERIES} = "y" ];
then
  php bin/console doctrine:schema:update --force
fi
