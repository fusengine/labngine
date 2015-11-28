FROM labengine/ubuntu-upstart
MAINTAINER Fusengine <info@fusengine.ch>

RUN apt-get update && apt-get install -y \
  php5-cli \
  php5-curl \
  php5-intl \
  php5-mongo \
  php5-mysqlnd \
  php5-xdebug \
  php5-xsl

# Cleanup
RUN apt-get clean

# Upgrade
RUN apt-get upgrade -y

# Add additional php ini
COPY php_additional.ini /etc/php5/cli/conf.d/

# Copy entrypoint
COPY ./docker-entrypoint.sh /

# Entrypoint
ENTRYPOINT ["/docker-entrypoint.sh"]

# php command
CMD ["php", "-a"]
