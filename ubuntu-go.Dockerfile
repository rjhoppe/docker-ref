FROM ubuntu:focal

RUN : \
    && apt-get-update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      curl \
      ca-certificates \
    # The clean command clears out the local repository of downloaded package files
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && :

RUN : \
    && curl --location --silent --output /go.tar.gz https://dl.google.com/go/go1.21.4.linux-amd64.tar.gz
    # Validate that the file is correct using SHA256 Checksum 
    && echo '/go.tar.gz 73cac0215254d0c7d1241fa40837851f3b9a8a742d0b54714cbdfb3feaf8f0af' | sha256sum --check \
    && tar -xf /go.tar.gz \
    # Delete zip after done with installation
    && rm /go.tar.gz \
    && :
