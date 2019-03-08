FROM    centos:7

RUN     yum update -y
RUN     yum install -y gcc
RUN     yum install -y wget

RUN     wget https://cmake.org/files/v3.13/cmake-3.13.4-Linux-x86_64.tar.gz
RUN     tar -zxvf cmake-3.13.4-Linux-x86_64.tar.gz
ENV     PATH "/cmake-3.13.4-Linux-x86_64/bin:$PATH"





RUN     curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable

RUN     yum install -y make
