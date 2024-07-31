#use the official PHP image as the image
FROM php:7.4-apache
#copy the application files into the container 
COPY ./var/WWWW/html
#set the working directory in the container
WORKERIDR/var/WWW/html
#install necessary PHP extensions
RUN apt-get update && apt-get install-y\
libicu-dev\
libzip-dev\
&& docker-php-ext-install\
intl\
zip\
&& a2enmod rewrite
#Expose port 80
EXPOSE 80
#Define the entry point for the container 
  CMD["apache2-foreground"]

  
