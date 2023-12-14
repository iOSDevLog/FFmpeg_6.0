#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -rf fdk-aac \
	&& git clone --depth 1 https://github.com/mstorsjo/fdk-aac.git \
	&& cd fdk-aac \
	&& autoreconf -fiv \
	&& ./configure CFLAGS="-fPIC" CPPFLAGS="-fPIC" --prefix="$HOME/ffmpeg6.0_build" --bindir="$HOME/bin6.0" \
	&& make \
	&& make install
