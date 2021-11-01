FROM jsdecena/php74-fpm:latest

RUN apt-get update && apt-get install -y \
    libpq-dev
RUN apt-get update && \
    apt-get install -y gcc make libssh2-1-dev \
    libssh2-1 \
    zlib1g-dev \
    libzip-dev \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev

RUN curl http://pecl.php.net/get/ssh2-1.2.tgz -o ssh2.tgz && \
    pecl install ssh2 ssh2.tgz && \
    docker-php-ext-enable ssh2 && \
    rm -rf ssh2.tgz

RUN pecl config-set php_ini /etc/php.ini

# Install extensions
RUN docker-php-ext-install pdo_pgsql gd zip mbstring

EXPOSE 9000
