FROM ubuntu
LABEL maintainer="Fusengine <info@fusengine.ch>"
ENV TIMEZONE "Europe/Zurich"

# Add buildpack
COPY script_base/ /root
RUN chmod 775 /root/*.sh

# Run buildpack install and update
RUN ./root/build_default_pack.sh

# =>  [ list php7 package => RUN apk search php7-* ]
# =>  [ Expose ssh => EXPOSE 22 ]

# pepare for takeoff
CMD ["/bin/bash"]
