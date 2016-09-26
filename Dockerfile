FROM cachethq/docker:latest

MAINTAINER Pauli 'Dids' Jokela <pauli.jokela@didstopia.com>

USER root

# Install nginx
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get clean && \
    apt-get -q -y update && \
    apt-get -q -y install \
    nginx && \
    apt-get clean && apt-get autoremove -q && \
    rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man /tmp/*

# Clear the nginx configuration directory
#RUN rm -fr /etc/nginx/conf.d/*

# Copy the nginx configuration
COPY default.conf /etc/nginx/sites-enabled/default
COPY default.conf /etc/nginx/sites-available/default

# Copy custom startup script
COPY custom_startup.sh /custom_startup.sh

# Update the new entrypoint
CMD []
ENTRYPOINT ["/custom_startup.sh"]
