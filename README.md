# golang-project-setup

This project contains the intial files to startup a Golang project.

## Set-up

- Copy files to your project workspace
```
cd ~/jfrflabs
wget https://github.com/jffalcao/golang-project-setup/archive/master.zip
unzip master.zip
rm master.zip
ls 
mv node-project-setup-master/ golang-project-setup-test
cd golang-project-setup-test/
code .
```
- Modify MOTD File replacing placeholder with your projects name
- Modify Dockerfile and replacing value of PS1 with your projects idendtifier

## Working with Docker

- Building the container
```
docker build --rm -t <Golang-project>:latest .
docker images
docker run -v $(pwd):/opt -p 3000:3000 -it <node-project>
build test-golang.go
./test-golang.go
```
- If needed use this command to attach or restart teh container
```
docker ps -a
docker attach <containerID>
docker restart <containerID>
```

