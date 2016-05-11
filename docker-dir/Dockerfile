#======================================================================
# Tomcat

# Tag details: https://github.com/docker-library/docs/blob/master/tomcat/tag-details.md
# Dockerfiles: https://github.com/docker-library/tomcat
# Default port: 8080
# Working directory=CATALINA_HOME=/usr/local/tomcat/
#======================================================================

FROM tomcat:6

#FROM tomcat:6.0.45-jre7
#FROM tomcat:6.0.45-jre8

#FROM tomcat:7
#FROM tomcat:7.0.69-jre7
#FROM tomcat:7.0.69-jre8

#FROM tomcat:8
#FROM tomcat:8.0.33-jre7
#FROM tomcat:8.0.33-jre8

#FROM tomcat:9
#FROM tomcat:9.0.0-jre8


ADD HelloDocker.war $CATALINA_HOME/webapps/
#ADD <artifact-name>.war $CATALINA_HOME/webapps/


#======================================================================
# GlassFish

# Tag details: https://github.com/docker-library/docs/blob/master/glassfish/tag-details.md
# Dockerfiles: https://github.com/glassfish/docker
# Ports: ASADMIN_LISTENER_PORT=4848  HTTP_LISTENER_PORT=8080 HTTP_SSL_LISTENER_PORT=8181
# Working directory=GLASSFISH_HOME=/usr/local/glassfish4/
#======================================================================

#FROM glassfish:4.0-jdk7
#FROM glassfish:4.1-jdk8
#FROM glassfish:latest

#ADD <artifact-name>.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/
#ADD HelloDocker.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/



#======================================================================
# JBoss Wildfly

# https://hub.docker.com/r/jboss/wildfly/
# Tag details: https://hub.docker.com/r/jboss/wildfly/tags/
# Dockerfiles: https://github.com/jboss-dockerfiles/wildfly/blob/master/Dockerfile
# Default port: 8080
# Working directory=JBOSS_HOME=/opt/jboss/wildfly
#======================================================================
#FROM jboss/wildfly
#FROM jboss/wildfly:8.1.0.Final
#FROM jboss/wildfly:8.2.0.Final
#FROM jboss/wildfly:8.2.1.Final
#FROM jboss/wildfly:9.0.0.Final
#FROM jboss/wildfly:9.0.1.Final
#FROM jboss/wildfly:9.0.2.Final
#FROM jboss/wildfly:10.0.0.Final

#ADD <artifact-name>.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/
#ADD HelloDocker.war $JBOSS_HOME/standalone/deployments/


#//TODO
#======================================================================
# WebLogic Server 12.1.3 0;  port=7001, 7002 and 5556; User: weblogic  Pass: welcome1


# WebLogic Server 12.2.1

# https://hub.docker.com/r/ismaleiva90/weblogic12/
# Dockerfiles: https://github.com/oracle/docker-images/tree/master/OracleWebLogic/dockerfiles
# Default port: 7001
# Working directory=DOMAIN_HOME=/u01/oracle/weblogic/user_projects/domains/base_domain/
#
#======================================================================
#
#FROM ismaleiva90/weblogic12
#RUN mkdir -p /servers/AdminServer/upload
#run in Development Mode with -Dweblogic.ProductionModeEnabled=false
#( "Production" WLS_DISPLAY_MODE="Development")
#ADD HelloDocker.war /$DOMAIN_HOME/autodeploy/

#//TODO
#  Geronimo Server
#  Jetty Server
#  JSR45 Compatible Application server
#  Resin Server
#  Spring dmServer
#  Tomcat Server
#  TomEE Server
#  WebLogic Server
#  WebSphere Server






