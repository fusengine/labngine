FROM ubuntu:14.04.4
MAINTAINER Fusengine <info@fusengine.ch>

# ENV TO ADD PACKAGES
# ENV PACKAGES_BUILDPACK

# Add buildpack
COPY script_base/ /root
RUN chmod 775 /root/*.sh

# Run buildpack
RUN ./root/build_default_pack.sh

# [ list php7 package => RUN apt-cache search php7-* ] 
# [ Expose ssh => EXPOSE 22 ]

# start ubuntu
CMD ["/bin/bash"]
