FROM debian:8.4

MAINTAINER Mohamed Boudra <mohamed@boudra.me>

ENV DEBIAN_FRONTEND noninteractive
ENV COMPOSE_VERSION 1.8

RUN apt-get update -q \
	&& apt-get install -y -q --no-install-recommends curl ca-certificates python-pip \
	&& curl -o /usr/local/bin/docker-compose -L \
		"https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-Linux-x86_64" \
	&& chmod +x /usr/local/bin/docker-compose

RUN curl -sSL https://get.docker.com/ | sh
RUN pip install awscli
