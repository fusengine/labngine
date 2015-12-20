FROM debian
MAINTAINER Fusengine <info@fusengine.ch>
LABEL debian latest

# Update
RUN apt-get update

# Intall packages
RUN apt-get install -yqq \
                    vim \
                    curl \
                    wget \
                    git \
                    zip \
                    unzip \
                    htop \
                    supervisor \
                    build-essential \
                    software-properties-common \
                    python-software-properties
                    
# Update
RUN apt-get upgrade -y

# Expose port
EXPOSE 22

# bash on debian
CMD ["bash"]
