FROM yyolk/jenkins:1.614

USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt

EXPOSE 8080

USER jenkins