#!/bin/bash

cd ~ && mkdir ffmpeg6.0_sources ffmpeg6.0_build bin6.0

sudo apt update

sudo apt-get -y install \
	autoconf \
	automake \
	build-essential \
	cmake \
	git-core \
	libass-dev \
	libfreetype6-dev \
	libsdl2-dev \
	libtool \
	libva-dev \
	libvdpau-dev \
	libvorbis-dev \
	libxcb1-dev \
	libxcb-shm0-dev \
	libxcb-xfixes0-dev \
	pkg-config \
	texinfo \
	wget \
	zlib1g-dev \
	libasound2-dev \
	libgl1-mesa-dev \
	libglew-dev \
	libglm-dev \
	mercurial \
	libnuma-dev
