FROM yyolk/jenkins-utils:latest
MAINTAINER Joseph Yølk Chiocchi <joe@yolk.cc>
COPY plugins.txt /usr/share/jenkins/active.txt
RUN plugins.sh /usr/share/jenkins/active.txt
