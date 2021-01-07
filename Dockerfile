FROM phpswoole/swoole:latest-alpine

RUN \
    pecl update-channels        && \
    pecl install redis          && \
    docker-php-ext-enable redis && \
    docker-php-ext-install pcntl pdo_mysql
