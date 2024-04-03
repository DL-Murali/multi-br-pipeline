FROM ubuntu:20.04
RUN apt update
RUN apt install nginx -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
