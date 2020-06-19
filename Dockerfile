FROM ubuntu

RUN apt-get update && apt-get install -y \
    vim \
    procps \
    curl \
    wget \
    tar \
    unzip \
    screen \
    telnet \
    iputils-ping \
    nmap \
    tcpdump \
    openssh-client \
    iperf \
    python3 \
    python-pip \
    httperf 
    
RUN pip install awscli
    
RUN rm -rf /var/lib/apt/lists/*    

WORKDIR /root
