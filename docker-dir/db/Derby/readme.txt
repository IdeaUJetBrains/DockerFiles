INFO:
Java version: 1.7
Java home:  /usr/lib/jvm/java-7-openjdk-amd64/jre
OS:  ubuntu:14.04.4
Derby version: 10.12.1.1
Derby home: /db-derby-10.12.1.1-bin/
Folder with Databases: /dbs

ENVIROMENT VARIABLES
PWD=/dbs
HOME=/root

HOW TO CONNECT TO DOCKER DB SERVER

CONNECT DATA:
jdbc:derby://172.27.121.11:1527/DOCKERDB
user=DOCKERDB
password = DOCKERDB
Note: the port value (here 1527) see in the corresponding container-settings file

HOW TO:
1. Install docker
https://docs.docker.com/engine/installation/
https://docs.docker.com/engine/userguide/

2. Add Docker support to IDEA
https://www.jetbrains.com/help/idea/2016.1/docker.html

3. Copy the needed docker files to the “docker-dir” folder
        - create “docker-dir” folder in your project
        - choose folder with the needed version of the server. For example, "9.1" folder.
        - copy contents of "9.1" folder to the created “docker-dir”


4. Correct "HostIp" value in the container_settings.json if needed.
Note: there is the default port of VM with docker daemon in this file now.

5. Create a new Docker Run Configuration
        - choose "Docker Deployment" in Run/Debug Configuration dialog
        - add values on the Deployment tab:
                      check Docker server - the installed Docker
                      choose Dockerfile - the copied Dockerfile file
                      enter imageName,
                      enter containerName,
        - add values on the Container tab:
                      add path to container_settings.json in the "JSON file" field

        - press Apply/Ok

6. Run the created Configutarion
Results are in the Docker View

7. Create connection to the database in the Database View:
- go to the Database View, add new Data Source
- add URL:  jdbc:derby://172.27.121.11:1527/DOCKERDB
- user=DOCKERDB, password = DOCKERDB
  NB: port value is taken from container_settings.json, "HostPort"
Connect.

