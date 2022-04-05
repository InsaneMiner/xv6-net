FROM debian:buster-20220328

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential gcc-multilib qemu-system-x86 netcat-openbsd

RUN mkdir -p /src/xv6-net
WORKDIR /src/xv6-net
COPY . .
