FROM debian

RUN apt-get update -y
RUN apt-get install -y nasm binutils g++ wget unzip

COPY Zad1 /home/root/Zad1
COPY Zad2 /home/root/Zad2

WORKDIR /home/root
