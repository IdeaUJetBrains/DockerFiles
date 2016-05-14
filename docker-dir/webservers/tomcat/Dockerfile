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
