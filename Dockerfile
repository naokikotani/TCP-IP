FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    iproute2 \
    iputils-ping \
    tcpdump \
    net-tools \
    traceroute \
    curl \
    wget \
    iptables \
    netcat-openbsd \
    dnsutils \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
