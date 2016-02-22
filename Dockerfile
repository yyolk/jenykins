FROM yyolk/jenkins-utils:latest
MAINTAINER Joseph Yølk Chiocchi <joe@yolk.cc>
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN plugins.sh /usr/share/jenkins/plugins.txt
