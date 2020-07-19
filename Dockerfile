FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install -y \
    vim \
    cron \
    gnupg2 \
    procps \
    curl \
    git \
    wget \
    tar \
    unzip \
    screen \
    telnet \
    redis-tools \
    iputils-ping \
    nmap \
    tcpdump \
    openssh-client \
    openssh-server \
    iperf \
    docker.io \
    tzdata \
    apache2-utils \
    aria2 \
    openssl \
    sudo \
    rsyslog \
    supervisor \
    apt-transport-https \
    httperf 

WORKDIR /root
