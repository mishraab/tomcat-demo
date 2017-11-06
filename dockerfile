FROM tomcat:jre8-alpine

RUN apk add --no-cache rsync
RUN chmod -R g+rw $CATALINA_HOME/conf && \
chmod -R g+rw $CATALINA_HOME/logs && \
chmod -R g+rw $CATALINA_HOME/temp && \
chmod -R g+rw $CATALINA_HOME/webapps && \
chmod -R g+rw $CATALINA_HOME/work && \
find $CATALINA_HOME -type d -exec chmod g+x {} +
