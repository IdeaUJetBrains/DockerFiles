HOW TO DEPLOY ARTIFACT TO SERVER

1. Install docker
https://docs.docker.com/engine/installation/
https://docs.docker.com/engine/userguide/

2. Add Docker support to IDEA
https://www.jetbrains.com/help/idea/2016.1/docker.html



3. Copy the needed docker files to the “docker-dir” folder
        - create “docker-dir” folder in your project
        - choose folder with the needed version of the server. For example, "5.7" folder.
        - copy contents of "5.7" folder to the created “docker-dir”

4. Create an artifact  <artifact-name>.war and place it to the directory which contains the Dockerfile
   (or make it as artifact output directory)

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

7. Go to the corresponding url with the deployed artifact
http://192.168.99.100:18080/HelloDocker/
NB: "HostIp" and "HostPort" are taken from container_settings.json file

