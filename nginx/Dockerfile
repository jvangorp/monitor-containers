# Build a Docker image for nginx as a reverse proxy with the following mappings:
# InfluxDB admin page localhost:8083 -> /influxdb/admin
# InfluxDB api localhost:8086 -> /influxdb/api


FROM ubuntu:trusty

ADD http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb /influxdb_latest_amd64.deb

RUN mkdir -p /opt/influxdb/shared/data
RUN dpkg -i /influxdb_latest_amd64.deb
RUN rm -rf /opt/influxdb/shared/data

ADD config.toml /opt/influxdb/shared/config.toml

EXPOSE 80 443

ENTRYPOINT ["/usr/bin/influxdb"]
CMD ["-config=/opt/influxdb/shared/config.toml"]
