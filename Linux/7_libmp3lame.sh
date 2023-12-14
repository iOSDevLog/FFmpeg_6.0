#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -rf lame \
	&& wget -c https://zenlayer.dl.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz \
	&& tar xvf lame-3.100.tar.gz \
	&& cd lame-3.100 \
	&& ./configure --prefix="$HOME/ffmpeg6.0_build" --bindir="$HOME/bin6.0" --enable-nasm --with-pic \
	&& make \
	&& make install
