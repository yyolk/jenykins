FROM yyolk/jenkins:1.614

USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt

EXPOSE 8080

USER root
RUN chown -R jenkins:jenkins /var/jenkins_home

USER jenkins