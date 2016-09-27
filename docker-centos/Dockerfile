# Centos:latest
FROM centos
MAINTAINER Fusengine <info@fusengine.ch>
LABEL Vendor="CentOS7"


# update to CentOS
RUN yum update -y

# install package
RUN yum install -y \
              wget \
              curl \
               git \
               vim \
    openssh-server

# Clean up
RUN yum clean all

# Expose port
EXPOSE 22

CMD ["/bin/bash"]
