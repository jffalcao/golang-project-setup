FROM golang

LABEL maintainer="jfribeirofalcao@gmail.com" 

ADD . /opt
WORKDIR /opt

ADD ./MOTD /opt/MOTD
RUN echo "cat /opt/MOTD" >> /root/.bashrc && \
    echo "PS1='<Golang Project>:\w >> '" >> /root/.bashrc && \
    echo "defshell -bash" > /root/.screenrc

ENTRYPOINT ["/bin/bash"]