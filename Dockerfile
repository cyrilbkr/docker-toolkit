FROM debian:9-slim

RUN apt-get update && apt-get install -y \
    vim \
    procps \
    tar \
    unzip \
    screen \
    telnet \
    iputils-ping \
    nmap \
    tcpdump \
    openssh-client \
    iperf \
    httperf 

WORKDIR /root
