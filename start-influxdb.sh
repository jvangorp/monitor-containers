#! /bin/bash
docker rm influxdb
docker run -d --name influxdb \
	--volumes-from data \
	-p 8083:8083 -p 8086:8086 \
	jvangorp/influxdb
