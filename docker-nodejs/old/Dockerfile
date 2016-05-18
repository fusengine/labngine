FROM labengine/ubuntu-xenial
MAINTAINER Fusengine <info@fusengine.ch>

# add version nodejs
ENV NODE_VERSION setup_6.x


# Add buildpack
COPY install-node.sh /root/install-node.sh
RUN chmod 775 /root/install-node.sh

# Run buildpack
RUN ./root/install-node.sh

# Add Nodejs repos
#RUN curl -sL https://deb.nodesource.com/${NODE_VERSION}| sudo -E bash -

# Update Ubuntu
#RUN apt-get update

# Intall Nodejs
#RUN apt-get install -y nodejs

# RUN apt-get remove --purge curl -y

# Install grunt-cli
#RUN npm install -g grunt grunt-cli

# Upgrade and dist-upgrade
#RUN apt-get dist-upgrade -y && apt-get upgrade -y

# Autoremove Cleanup Purge
#RUN apt-get autoremove -y \
#    && apt-get purge -y \
#    && apt-get clean -y


# Create directory
RUN mkdir /data

# Volume and workdir
VOLUME ["/data"]
WORKDIR /data

# version Nodejs
RUN echo Node Version && node --version
RUN npm --version
