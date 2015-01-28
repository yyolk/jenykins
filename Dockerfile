FROM jenkins:latest

# USER root

# RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get install -y maven

USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt


USER jenkins