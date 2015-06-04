FROM yyolk/jenkins:latest

USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y awscli

USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt