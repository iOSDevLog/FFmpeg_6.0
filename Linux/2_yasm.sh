#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -f yasm-1.3.0.tar.gz \
	&& wget -O yasm-1.3.0.tar.gz https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz \
	&& rm -rf yasm-1.3.0 \
	&& tar xzvf yasm-1.3.0.tar.gz \
	&& cd yasm-1.3.0 \
	&& ./configure CFLAGS="-fPIC" CPPFLAGS="-fPIC" --prefix="$HOME/ffmpeg6.0_build" --bindir="$HOME/bin6.0" \
	&& make \
	&& make install
