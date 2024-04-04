# Use Ubuntu as the base image
FROM ubuntu:22.04

# Set the Timezone to UTC
ENV TZ=UTC

# Install Nginx, and other necessary Packages
RUN apt-get update && apt-get install -y \
    software-properties-common \
    nginx \
    curl \
    wget \
    sudo \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Add PHP repository
RUN sudo add-apt-repository ppa:ondrej/php

# Install PHP
RUN apt-get update && apt-get install -y \
    php8.2 php8.2-fpm php8.2-mysql php8.2-cli php8.2-gd \
    && rm -rf /var/lib/apt/lists/*
ADD php.ini /etc/php/8.2/nginx/

# Install Wordpress
RUN wget https://wordpress.org/latest.zip \
    && unzip latest.zip -d /var/www/html/ \
    && rm latest.zip

# Add Nginx config file
RUN rm /etc/nginx/sites-enabled/default
ADD wordpress.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

# Add WordPress config file
RUN rm /var/www/html/wordpress/wp-config-sample.php
ADD wp-config.php /var/www/html/wordpress/wp-config.php

# Change the user and Permission of WordPress root directory
RUN chown -R www-data:www-data /var/www/html/wordpress \
    && chmod -R 755 /var/www/html/wordpress

# Exposing container to port 80
EXPOSE 80

# Copy the startup script and give excuitable permission
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

# Command to run the startup script
CMD ["/usr/local/bin/startup.sh"]