# Build a Docker image for nginx as a reverse proxy.
# See the nginx.conf file for the reverse proxy mappings.

FROM ubuntu:trusty

RUN apt-get install -y nginx
RUN rm /etc/nginx/nginx.conf
ADD nginx.conf  /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx"]
