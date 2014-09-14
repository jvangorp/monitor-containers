#! /bin/bash
docker rm interactive
docker run -it --name interactive \
	--volumes-from data \
	ubuntu:trusty /bin/bash
