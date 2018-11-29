# golang-project-setup

This project contains the intial files to startup a Golang project.

## Set-up

- Copy files to your project workspace
- Modify MOTD File replacing placeholder with your projects name
- Modify Dockerfile and replacing value of PS1 with your projects idendtifier

## Working with Docker

- Building the container
```
docker build --rm -t <Golang-project>:latest .
docker images
docker run -v $(pwd):/opt -p 3000:3000 -it <node-project>
```
- If needed use this command to attach or restart teh container
```
docker ps -a
docker attach <containerID>
docker restart <containerID>
```

