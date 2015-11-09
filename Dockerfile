FROM jenkins:1.625.1
MAINTAINER Sebastiaan Renkens sebastiaan.renkens@ordina.nl

USER root

# Jenkins plugins
COPY  plugins.txt /tmp/plugins.txt
RUN /usr/local/bin/plugins.sh /tmp/plugins.txt
