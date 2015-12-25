FROM debian
MAINTAINER Fusengine <info@fusengine.ch>

# Add buildpack
ADD deps.sh /
RUN chmod 775 /*.sh

# Run buildpack
RUN ./deps.sh

# Expose port
EXPOSE 22

# bash on debian
CMD ["bash"]
