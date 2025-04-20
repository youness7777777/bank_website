# Use the official PHP image from Docker Hub with Apache
FROM php:8.0-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the contents of the current directory to the working directory inside the container
COPY . .

# Expose port 80 to access the app in a web browser
EXPOSE 80

# Enable Apache mod_rewrite (useful for URL routing)
RUN a2enmod rewrite

# Optionally install PHP extensions if needed (uncomment if required)
# RUN docker-php-ext-install pdo pdo_mysql
