#!/bin/bash

set -e
set -x

apt update

apt install -y --no-install-recommends \
    build-essential \
    scons \
    pkg-config \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libgl1-mesa-dev \
    libglu-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libxi-dev \
    libxrandr-dev \
    yasm \
    ca-certificates \
    git \
    python3 \
    python3-openssl \
    unzip \
    wget \
    zip \
    curl \
    openjdk-8-jdk

apt install -y --no-install-recommends \
    libsquish-dev \
    libbullet-dev \
    libtheora-dev \
    libvpx-dev \
    libwebp-dev \
    libmbedtls-dev \
    libminiupnpc-dev \
    libopus-dev \
    libsquish-dev \
    libzstd-dev \
    liblz-dev \
    zlib1g-dev \
    libopusfile-dev \
    libvorbis-dev \
    libpcre2-dev

wget https://github.com/godotengine/godot/archive/${GODOT_VERSION}-${GODOT_RELEASE}.zip
unzip -qq ${GODOT_VERSION}-${GODOT_RELEASE}.zip
