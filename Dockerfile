FROM centos:latest

RUN dnf update -y &&\
    dnf install -y rust rust-toolset python3 python36-devel openssl-devel &&\
    pip3 install --upgrade pip &&\
    pip3 install platformio &&\
    pio install --with-all-packages espressif32 &&\
    [ -d /app ] || mkdir /app

WORKDIR /app

CMD ["/bin/bash"]
