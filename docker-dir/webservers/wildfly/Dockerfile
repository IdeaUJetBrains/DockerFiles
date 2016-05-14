
#======================================================================
# JBoss Wildfly
# https://hub.docker.com/r/jboss/wildfly/
# Tag details: https://hub.docker.com/r/jboss/wildfly/tags/
# Dockerfiles: https://github.com/jboss-dockerfiles/wildfly/blob/master/Dockerfile
# Default port: 8080
# Working directory=JBOSS_HOME=/opt/jboss/wildfly
#======================================================================

FROM jboss/wildfly
#FROM jboss/wildfly:8.1.0.Final
#FROM jboss/wildfly:8.2.0.Final
#FROM jboss/wildfly:8.2.1.Final
#FROM jboss/wildfly:9.0.0.Final
#FROM jboss/wildfly:9.0.1.Final
#FROM jboss/wildfly:9.0.2.Final
#FROM jboss/wildfly:10.0.0.Final

ADD HelloDocker.war $JBOSS_HOME/standalone/deployments/
