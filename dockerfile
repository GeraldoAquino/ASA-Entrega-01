FROM ubuntu:latest 

RUN apt update -y 

RUN apt-get install -y iputils-ping net-tools

CMD ["tail", "-f", "/dev/null"]