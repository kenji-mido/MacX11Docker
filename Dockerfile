FROM --platform=linux/amd64 ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8

RUN apt-get update && \
    apt-get install --allow-change-held-packages -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    wget \
    curl \
    ca-certificates \
    iproute2 \
    emacs \
    software-properties-common \
    x11-apps 
RUN rm -rf /var/lib/apt/lists/*
