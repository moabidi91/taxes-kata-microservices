#!/bin/sh
echo '---> Starting deploy.sh ...'
echo 'STEP 1/3 : ---> Updating wrapper from master'
git checkout master
git pull origin master

echo 'STEP 2/3 : ---> Updating submodules from master'
git submodule init && git submodule sync && git submodule update
git submodule foreach 'git checkout master && git pull origin master'

echo 'STEP 3/3 : ---> Build & Run images'
docker-compose up -d #--build 
echo '---> End deploy.sh !'
