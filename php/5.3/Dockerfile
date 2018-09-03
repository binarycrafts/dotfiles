FROM occitech/php:5.3-apache

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install php5-mysql php5-mcrypt php5-curl php5-imap cron rsyslog

RUN apt-get update && apt-get -y install curl && curl -sSL https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer && apt-get clean

RUN apt-get update && apt-get -y install php5-dev php-pear make re2c && \
    apt-get clean  && rm -rf /var/lib/apt/lists/*

VOLUME /var/www

ENTRYPOINT ["/usr/bin/php"]
