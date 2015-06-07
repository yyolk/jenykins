FROM yyolk/jenkins-utils:latest

COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt