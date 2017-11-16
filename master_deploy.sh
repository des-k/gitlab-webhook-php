#!/bin/bash

cd /var/www/public_html/laziness/
git checkout master
git pull origin master >> /var/www/public_html/hook/laziness/deploy.log
echo "done" >> /var/www/public_html/hook/laziness/deploy.log
