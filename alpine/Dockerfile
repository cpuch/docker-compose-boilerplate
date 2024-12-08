# syntax=docker/dockerfile:1
FROM alpine:3

# Set system locale to UTF 8
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 LC_CTYPE=C.UTF-8

# Set default timezone and install system packages
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    apk add --no-cache bash wget curl nano

# Use UID and GID arguments got from docker-compose.yml
ARG UID
ARG GID

# Create user group
RUN addgroup user -g ${GID}

# Create user
RUN adduser user -D -u ${UID} -G $(getent group ${GID} | cut -d: -f1) -s /bin/bash

# Create the working directory
RUN mkdir -p /app && \
    chown ${UID}:${GID} /app

# Specify the working directory
WORKDIR /app

# Switch to the newly created user
USER ${UID}

# Set the default command to keep container running
CMD ["/bin/bash", "-c", "echo 'Container is ready.' ; trap exit TERM ; while sleep 1; do :; done"]