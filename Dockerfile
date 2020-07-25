FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

    
####### PKG    ####################################################

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
    
####### TZ   ####################################################
RUN ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata

    
####### KUBECTL    ####################################################
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update &&  apt-get install -y kubectl


####### LINKERD    ####################################################
RUN wget https://github.com/linkerd/linkerd2/releases/download/stable-2.8.0/linkerd2-cli-stable-2.8.0-linux && mv linkerd2-cli-stable-2.8.0-linux /usr/local/bin/linkerd && chmod +x /usr/local/bin/linkerd 

####### HELM    ####################################################
RUN wget https://get.helm.sh/helm-v3.2.4-linux-amd64.tar.gz  && tar -xvf helm-v3.2.4-linux-amd64.tar.gz &&  mv linux-amd64/helm /usr/local/bin/ && rm -rf linux-amd64 helm-v3.2.4-linux-amd64.tar.gz 


#######  AWS CLI ####################################################
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && bash aws/install && rm -rf aws*


#######  AZURE CLI ####################################################
RUN curl -sL https://aka.ms/InstallAzureCLIDeb |  bash

#######  K9S ####################################################
RUN wget https://github.com/derailed/k9s/releases/download/v0.20.5/k9s_Linux_x86_64.tar.gz
RUN tar -xvf k9s_Linux_x86_64.tar.gz && mv k9s  /usr/local/bin/ && rm -f k9s_Linux_x86_64.tar.gz


WORKDIR /root
