FROM debian:buster-slim

RUN apt-get update -yq \
&& apt-get install -yq nginx \
mariadb-server \
php-fpm \
php-mysql

COPY srcs /root/

WORKDIR /root/

ENTRYPOINT bash entrypoint.sh