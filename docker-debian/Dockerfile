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
                    figlet \
                    supervisor \
                    build-essential \
                    software-properties-common \
                    python-software-properties

# Update
RUN echo '================================================================='
RUN figlet FUSENGINE debian && \
    echo 'fusengine.ch  info@fusengine.ch' && \
    echo '' && \
    echo '================================================================='

RUN apt-get dist-upgrade -y && apt-get upgrade -y

# Expose port
EXPOSE 22

# bash on debian
CMD ["bash"]
