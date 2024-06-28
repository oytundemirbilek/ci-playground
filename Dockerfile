

FROM python:3.10 AS base
ARG TIMEZONE="Europe/Berlin"
ARG WORKSPACE="/app"

SHELL ["/bin/bash"]

VOLUME ${WORKSPACE}/logs

WORKDIR ${WORKSPACE}

RUN -- \
    <<EOT
    dpkg-reconfigure tzdata
    apt-get install -qy fd-find sudo make
    