FROM rust:latest

RUN apt-get update && \
    apt-get -y install python3-pip && \
    # cargo install evcxr_repl && \
    rustup component add rust-analyzer clippy && \
    rm /usr/lib/python3.*/EXTERNALLY-MANAGED && \
    pip3 install --upgrade pip && \
    pip3 install platformio && \
    pio pkg install -g -p espressif32 && \
    [ -d /app ] || mkdir /app

WORKDIR /app

CMD ["bash"]
