#!/bin/bash

# change directory to project root
SCRIPT_DIRECTORY="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
cd ${SCRIPT_DIRECTORY}

# clone and change directory
cd tmp
rm -Rf install-latest
git clone git@github.com:confirado/apto-one-template.git install-latest
cd install-latest
git checkout main

# copy git ignored files
echo "copy ignored files"
cp -r _gitignore_/. .

# composer install
echo "composer install"
COMPOSER_MEMORY_LIMIT=-1 composer install --no-scripts

# npm install
npm ci
npm run live-frontend
npm run install-frontend

cd _client-deprecated_
npm ci
npm run live-backend
cd ..

# remove unnecessary files
rm -Rf .git
rm -Rf .angular
rm -Rf node_modules
rm -Rf _client-deprecated_/node_modules
rm -Rf _client-deprecated_/src-tmp

# create zip
cd ..
rm install-latest.zip
zip -rq install-latest.zip install-latest
rm -Rf install-latest
