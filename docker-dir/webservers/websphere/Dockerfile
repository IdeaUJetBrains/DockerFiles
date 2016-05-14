
#======================================================================
# IBM WebSphere Server
# https://hub.docker.com/_/websphere-liberty/
#======================================================================

FROM websphere-liberty
#FROM websphere-liberty:kernel
#FROM websphere-liberty:8.5.5.9-kernel
#FROM websphere-liberty:common
#FROM websphere-liberty:8.5.5.9-common
#FROM websphere-liberty:webProfile6
#FROM websphere-liberty:8.5.5.9-webProfile6
#FROM websphere-liberty:webProfile7
#FROM websphere-liberty:8.5.5.9-webProfile7
#FROM websphere-liberty:javaee7
#FROM websphere-liberty:8.5.5.9-javaee7
#FROM websphere-liberty:8.5.5.9
#FROM websphere-liberty:8.5.5
#FROM websphere-liberty:beta

ENV WLP_HOME /opt/ibm/wlp/
ADD HelloDocker.war $WLP_HOME/usr/servers/defaultServer/dropins/
EXPOSE 9080
#EXPOSE 9443


