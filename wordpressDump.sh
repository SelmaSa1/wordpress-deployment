#!/bin/bash
# wordpressDump.sh - Selma Sahin - 25.5.2021

docker exec -ti wordpressdeployment_db_1 /usr/bin/mysqldump -u wordpress -pwordpress -d wordpress >dump.sql

tar -C ./wp/wp-content -cvzf themes.zip ./themes

tar -C ./wp/wp-content -cvzf plugins.zip ./plugins

tar -C ./wp/wp-content -cvzf uploads.zip ./uploads

docker exec -ti wordpressdeployment_wordpress_1 cat wp-config.php >wp-config.localdev.php
