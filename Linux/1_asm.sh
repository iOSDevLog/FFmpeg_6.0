#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -f nasm-2.14.02.tar.bz2 \
	&& wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2 \
	&& rm -rf nasm-2.14.02 \
	&& tar xjvf nasm-2.14.02.tar.bz2 \
	&& cd nasm-2.14.02 \
	&& cp /usr/share/misc/config.sub . \
    && cp /usr/share/misc/config.guess . \
	&& ./autogen.sh \
	&& sed -i -e "s/done       for/done; for/g" ./configure \
	&& ./configure --prefix="$HOME/ffmpeg6.0_build" --bindir="$HOME/bin6.0" \
	&& make -j4 \
	&& make install
