FROM ubuntu
MAINTAINER Kopper (ngounoukopper@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
ADD web/ /var/www/html/
#RUN git clone https://github.com/eazytrainingfr/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
