FROM golang

LABEL maintainer="jfribeirofalcao@gmail.com" 

ADD . /GolangProject
WORKDIR /GolangProject

ADD ./MOTD /opt/MOTD
RUN echo "cat /opt/MOTD" >> /root/.bashrc && \
    echo "defshell -bash" > /root/.screenrc

ENTRYPOINT ["/bin/bash"]