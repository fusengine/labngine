FROM labengine/ubuntu-xenial
MAINTAINER Fusengine <info@fusengine.ch>

# add version nodejs
ENV NODE_VERSION setup_6.x

# Add buildpack
COPY install-node.sh /root/install-node.sh
RUN chmod 775 /root/install-node.sh

# Run buildpack
RUN ./root/install-node.sh

# Create directory
RUN mkdir /data

# Volume and workdir
VOLUME ["/data"]
WORKDIR /data

# version Nodejs
RUN echo Node Version && node --version
RUN npm --version
