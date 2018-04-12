FROM webdevops/php-apache-dev:7.1
ADD . /app
WORKDIR /app
RUN apt-get update 
RUN apt-get install nano
COPY conf/php.ini /opt/docker/etc/php/php.ini
COPY conf/momusSite.crt /opt/docker/etc/httpd/ssl/server.crt
COPY conf/momusSite.key /opt/docker/etc/httpd/ssl/server.key
COPY conf/666-momus-ovh.conf /opt/docker/etc/opt/docker/etc/httpd/vhost.common.d/