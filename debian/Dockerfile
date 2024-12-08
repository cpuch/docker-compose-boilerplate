# syntax=docker/dockerfile:1
FROM debian:12

# Set system locale to UTF-8
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 LC_TYPE=C.UTF-8

# Disable interactive installations
ARG DEBIAN_FRONTEND=noninteractive

# Set default timezone and insall system packages
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install -y sudo bash-completion wget curl nano && \
    apt-get clean

# Use UID and GID arguments from docker-compose.yml
ARG UID
ARG GID

# Create user group
RUN groupadd user -g $GID

# Create user
RUN useradd user -u $UID -g $GID -m -s /bin/bash
#     echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Create the working directory
RUN mkdir /app && \
    chown $UID:$GID /app

# Specify the working directory
WORKDIR /app

# Switch to newly created user
USER $UID

# Set the default command to keep container running
CMD ["/bin/bash", "-c", "echo 'Container is ready.' ; trap exit TERM ; while sleep 1; do :; done"]
