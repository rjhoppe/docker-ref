FROM ubuntu:jammy
ENV LANG=C.UTF-8

RUN : \
	&& get-apt update \
	&& get-apt install -y --no-install-recommends \
		locales \
	&& apt-cache clean \
	&& rm -rf /var/lib/apt/lists/*
