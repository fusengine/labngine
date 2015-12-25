FROM ubuntu:latest
MAINTAINER Fusengine <info@fusengine.ch>

# Add buildpack
COPY build.sh /
RUN chmod 775 /*.sh

# Run buildpack
RUN ./build.sh

# Expose
EXPOSE 22

# start ubuntu
CMD ["/bin/bash"]
