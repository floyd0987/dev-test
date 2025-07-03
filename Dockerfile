FROM php:8.1-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html

# Copy your app (or use volume in dev)
COPY . .

# Expose port 80 (default for Apache)
EXPOSE 80
