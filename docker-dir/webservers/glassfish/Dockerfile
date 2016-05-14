
#======================================================================
# GlassFish

# Tag details: https://github.com/docker-library/docs/blob/master/glassfish/tag-details.md
# Dockerfiles: https://github.com/glassfish/docker
# Ports: ASADMIN_LISTENER_PORT=4848  HTTP_LISTENER_PORT=8080 HTTP_SSL_LISTENER_PORT=8181
# Working directory=GLASSFISH_HOME=/usr/local/glassfish4/
#======================================================================

FROM glassfish
#FROM glassfish:4.0-jdk7
#FROM glassfish:4.1-jdk8

ADD HelloDocker.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/



