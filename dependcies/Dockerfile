FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    dh-autoreconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev \
    asciidoc xmlto docbook2x \
 && rm -rf /var/lib/apt/lists/*

CMD [ "bash" ]
