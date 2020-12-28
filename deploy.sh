#!/bin/sh

git checkout master
git pull origin master

echo 'Update submodules'
git submodule init && git submodule sync && git submodule update
git submodule foreach 'git checkout master && git pull origin master'

echo 'Refresh NPMs modules for each submodules'
git submodule foreach 'npm install'

echo 'Docker compose up'
docker-compose up -d #--build 
