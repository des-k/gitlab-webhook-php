#!/bin/bash
DEPLOY_LOCATION=/var/www/public_html/dev-pms-at
DEPLOY_LOG=/var/www/public_html/hook/pms_at/develop.log
cd $DEPLOY_LOCATION
echo "$(date)" >> $DEPLOY_LOG 
git checkout develop
git pull origin develop >>$DEPLOY_LOG
composer install >> $DEPLOY_LOG 
echo "done" >> $DEPLOY_LOG
