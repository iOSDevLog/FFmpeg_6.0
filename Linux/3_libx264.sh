#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -rf x264 \
	&& git clone --depth 1 https://github.com/mirror/x264.git \
	&& cd x264 \
	&& PKG_CONFIG_PATH="$HOME/ffmpeg6.0_build/lib/pkgconfig" ./configure --prefix="$HOME/ffmpeg6.0_build" --bindir="$HOME/bin6.0" --enable-static --enable-shared --enable-pic \
	&& make \
	&& make install
