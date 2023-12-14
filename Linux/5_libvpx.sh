#!/bin/bash

export PATH=$HOME/bin6.0:$PATH
cd ~/ffmpeg6.0_sources \
	&& rm -rf libvpx \
	&& git clone --depth 1 https://github.com/webmproject/libvpx.git \
	&& cd libvpx \
	&& ./configure --prefix="$HOME/ffmpeg6.0_build" --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm --enable-pic --enable-shared \
	&& make \
	&& make install
