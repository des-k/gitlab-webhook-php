#!/bin/bash
DEPLOY_LOCATION=/var/www/public_html/pms_at
DEPLOY_LOG=/var/www/public_html/hook/pms_at/deploy.log
cd $DEPLOY_LOCATION
echo "$(date)" >> $DEPLOY_LOG 
git checkout master
git pull origin master >> $DEPLOY_LOG 
composer install >> $DEPLOY_LOG 
echo "done" >> $DEPLOY_LOG 
