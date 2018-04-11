FROM webdevops/php-apache-dev:7.1
ADD . /app
WORKDIR /app
RUN apt-get update 
RUN apt-get install nano

