HOW TO CONNECT TO DOCKER DB SERVER

1. Install docker
https://docs.docker.com/engine/installation/
https://docs.docker.com/engine/userguide/

2. Add Docker support to IDEA
https://www.jetbrains.com/help/idea/2016.1/docker.html

3. Copy the needed docker files to the “docker-dir” folder
        - create “docker-dir” folder in your project
        - choose folder with the needed version of the server. For example, "5.7" folder.
        - copy contents of "5.7" folder to the created “docker-dir”


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
- add URL:  jdbc:mysql://192.168.99.100:13306/DOCKERDB
  NB: port value is taken from container_settings.json, "HostPort"
- add password=root, user=root
Connect.

