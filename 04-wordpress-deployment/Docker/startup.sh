#!/bin/bash

WP_CONFIG="/var/www/html/wordpress/wp-config.php"

sed -i "s/\${DB_NAME}/${DB_NAME}/g" $WP_CONFIG
sed -i "s/\${DB_USER}/${DB_USER}/g" $WP_CONFIG
sed -i "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" $WP_CONFIG
sed -i "s/\${DB_HOST}/${DB_HOST}/g" $WP_CONFIG

service php8.2-fpm start
nginx -g 'daemon off;'
