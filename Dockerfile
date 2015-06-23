FROM yyolk/jenkins-utils:latest

COPY plugins.txt /plugins.txt
RUN plugins.sh /plugins.txt
