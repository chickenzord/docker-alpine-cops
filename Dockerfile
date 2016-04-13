FROM matriphe/alpine-php:cli-5.6

RUN apk update && \
  apk add php-intl && \
	rm -rf /var/cache/apk/*

VOLUME /books
COPY cops/ /www/
COPY config_local.php /www/config_local.php
