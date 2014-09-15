# Build a Docker image for nginx as a reverse proxy with the following mappings:
# InfluxDB admin page localhost:8083 -> /influxdb/admin
# InfluxDB api localhost:8086 -> /influxdb/api


FROM ubuntu:trusty

RUN apt-get install -y nginx
RUN rm /etc/nginx/nginx.conf
ADD nginx.conf  /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx"]
