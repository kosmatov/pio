FROM centos:latest

RUN dnf update -y && \
    dnf install -y make curl python3 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    pip3 install platformio && \
    pio platform install arduino && \
    pio platform install espidf && \
    [ -d /app ] || mkdir /app

WORKDIR /app

CMD ["/bin/bash"]
