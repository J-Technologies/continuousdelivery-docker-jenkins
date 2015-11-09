FROM jenkins:1.609.3
MAINTAINER Sebastiaan Renkens sebastiaan.renkens@ordina.nl

USER root

# Jenkins plugins
COPY  plugins.txt /tmp/plugins.txt
RUN /usr/local/bin/plugins.sh /tmp/plugins.txt

# Scripts
COPY copy-jenkins-config.sh /tmp/copy-jenkins-config.sh