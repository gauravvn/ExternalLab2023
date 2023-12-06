# Use an official PHP base image with Apache
FROM php:7.4-apache
#Set the working directory in the container
WORKDIR /var/www/html
#Clone the web application from the git repository
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/djgit17/ExternalLab2023.git .
#Expose the ports that apache will run on your application
EXPOSE 80
EXPOSE 9090
#Specify the command to run apache
CMD ["apache2-foreground"]
