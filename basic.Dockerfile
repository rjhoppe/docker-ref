FROM ubuntu:jammy
# Below tells system to use UTF-8 mode (not always enabled by default)
ENV LANG=C.UTF-8

RUN : \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
		locales \
	&& apt-cache clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& :
