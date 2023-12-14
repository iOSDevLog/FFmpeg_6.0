#!/bin/bash

cd ~/ffmpeg6.0_sources \
	&& rm -rf x265 \
	&& git clone https://bitbucket.org/multicoreware/x265_git.git/ x265 \
	&& cd x265/build/linux \
	&& cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg6.0_build" -DENABLE_SHARED=on -DENABLE_PIC=on -DBIN_INSTALL_DIR="$HOME/bin6.0" ../../source \
	&& make \
	&& make install
