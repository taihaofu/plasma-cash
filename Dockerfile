FROM ubuntu:18.04
MAINTAINER Taihao Fu

SHELL ["/bin/bash", "-c"]

RUN apt-get  update \
 && apt-get install -y vim git cmake ninja-build g++ python wget  m4 pkg-config zlib1g-dev psmisc sudo curl tmux nano npm \
 && npm install -g ganache-cli

RUN sudo apt-get -y install python3-pip

RUN wget https://github.com/ethereum/solidity/releases/download/v0.4.24/solc-static-linux
RUN chmod +x ./solc-static-linux
RUN sudo mv solc-static-linux /usr/bin/solc

RUN git clone https://github.com/taihaofu/plasma-cash.git



# docker build . -t omisego:latest
# docker run -it omisego:latest /bin/bash
