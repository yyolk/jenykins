FROM yyolk/jenkins:latest

USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python3-pip jshon
RUN pip3 install awscli

USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt