FROM fusengine/php
MAINTAINER Fusengine <info@fusengine.ch>


# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require "laravel/installer=~1.1"

# Set up the application directory.
WORKDIR /app

# Set up the command arguments
ENTRYPOINT ["composer", "--ansi"]
