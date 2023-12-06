FROM ubuntu:latest
#Set the working directory in the container
WORKDIR /var/www/html
#Clone the web application from the git repository
RUN apt-get update
RUN apt-get install apache2 php libapache2-mod-php -y
EXPOSE 80
EXPOSE 9090
ENTRYPOINT apachectl -D FOREGROUND
#Specify the command to run apache
CMD ["apache2-foreground"]


