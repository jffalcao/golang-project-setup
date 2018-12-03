FROM golang

LABEL maintainer="jfribeirofalcao@gmail.com" 

ADD . /go
WORKDIR /go

ADD ./MOTD /opt/MOTD
RUN echo "cat /opt/MOTD" >> /root/.bashrc && \
    echo "defshell -bash" > /root/.screenrc && \
    apt update && apt upgrade -y

ENTRYPOINT ["/bin/bash"]