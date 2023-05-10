FROM ubuntu:latest

RUN apt update 
RUN apt upgrade -y

RUN apt install -y nginx

WORKDIR /etc/ngix

#컨테이너가 도중 종료되지 않게 하기위해(백그라운드에서) 사용\daemon off;
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]

EXPOSE 80


