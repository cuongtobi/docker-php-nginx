FROM bitnami/php-fpm:7.4

RUN apt-get update
RUN apt-get install -y --no-install-recommends nginx

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

COPY nginx-conf/example /etc/nginx/sites-enabled/

COPY . /app

WORKDIR /app
