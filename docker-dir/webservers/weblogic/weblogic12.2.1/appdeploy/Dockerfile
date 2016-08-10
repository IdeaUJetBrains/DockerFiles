
# WebLogic Server 12.2.1, mode=DEVELOPER

#======================================================================
# WebLogic Server 12.2.1 ;  port=7001, 7002 and 5556;
# Admin Username: weblogic
# Admin Password: admin_password
# Oracle Linux Username: oracle
# Oracle Linux Password: welcome1
# WebLogic Domain Name: base_domain
# Admin Server on port: 8001
# NodeManager on port: 5556
# Managed Server on port: 7001


# Dockerfiles:
# Working directory: DOMAIN_HOME=/u01/oracle/user_projects/domains/base_domain
#
# To start WebLogic Server, use a username and password assigned to an admin-level user.
# For server administration, use the WebLogic Server console at
# http://hostname:port/console  (http://192.168.99.100:8001/console)
#
# Deployed application: http://hostname:port/HelloDocker/  (http://192.168.99.100:8001/HelloDocker/)
#
#======================================================================

FROM opavlova/weblogic:12.2.1

ADD HelloDocker.war $DOMAIN_HOME/autodeploy/

CMD ["startWebLogic.sh"]