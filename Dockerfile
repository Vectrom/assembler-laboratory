FROM debian

RUN apt-get update -y
RUN apt-get install -y nasm binutils g++

WORKDIR /home/root
