# Use Ubuntu as the base image
FROM ubuntu:22.04

# Set the timezone to UTC
ENV TZ=UTC

# Install Nginx, PHP, and other necessary packages
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

RUN wget https://wordpress.org/latest.zip \
    && unzip latest.zip -d /var/www/html/ \
    && rm latest.zip \
    && chown -R www-data:www-data /var/www/html/wordpress \
    && chmod -R 755 /var/www/html/wordpress

RUN rm /etc/nginx/sites-enabled/default
ADD wordpress.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

RUN rm /var/www/html/wordpress/wp-config-sample.php
ADD wp-config.php /var/www/html/wordpress/wp-config.php

RUN chown -R www-data:www-data /var/www/html/wordpress \
    && chmod -R 755 /var/www/html/wordpress

EXPOSE 80

COPY startup.sh /usr/local/bin/startup.sh

RUN chmod +x /usr/local/bin/startup.sh

CMD ["/usr/local/bin/startup.sh"]
