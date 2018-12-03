# golang-project-setup

This project contains the intial files to startup a Golang project.

## Set-up

- Copy files to your project workspace
```
cd ~/jfrflabs/go
wget https://github.com/jffalcao/golang-project-setup/archive/master.zip
unzip master.zip
mv golang-project-setup-master/ GolangProject
rm master.zip
cd GolangProject
code .
```
- Modify **MOTD** File replacing placeholder **GolangProject** with your projects name
- Modify **runcontainer.sh** replacing the placeholder with **GolangProject** with your projects name

## Working with Docker

- Building the container
```
docker build --rm -t Golang-project:latest .
docker images
```
-Running the container (If necessary make runcontainer.sh executable)
```
sudo chmod +x runcontainer.sh
./runcontainer.sh
cd src/hello
go build
./hello
```
- If needed use this command to attach or restart therm container
```
docker ps -a
docker attach <containerID>
docker restart <containerID>
```

