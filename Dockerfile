FROM debian:9-slim


RUN apt-get update && apt-get install -y \
    vim \
    tar \
    unzip \
    telnet \
    iputils-ping \
    nmap \
    tcpdump \
    openssh-client \
    iperf \
    httperf 


