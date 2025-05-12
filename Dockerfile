FROM ubuntu:20.04

RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install apache2 -y

COPY html /var/www/html

EXPOSE 80/tcp

RUN date>/var/www/html/buildtime.txt
CMD service apache2 start && bash

