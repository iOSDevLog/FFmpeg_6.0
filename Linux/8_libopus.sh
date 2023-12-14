#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -rf opus \
	&& git clone --depth 1 https://github.com/xiph/opus.git \
	&& cd opus \
	&& ./autogen.sh \
	&& ./configure --prefix="$HOME/ffmpeg6.0_build" -with-pic \
	&& make \
	&& make install
