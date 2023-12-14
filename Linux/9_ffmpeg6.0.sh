#/bin/bash

export PATH=$HOME/bin6.0:$PATH
cd $HOME/ffmpeg6.0_sources \
	&& rm -rf FFmpeg \
	&& git clone https://github.com/FFmpeg/FFmpeg.git \
	&& cd FFmpeg \
	&& git checkout remotes/origin/release/6.0 \
	&& PKG_CONFIG_PATH="$HOME/ffmpeg6.0_build/lib/pkgconfig" ./configure \
		--prefix="$HOME/ffmpeg6.0_build" \
		--extra-libs="-lpthread -lm" \
		--bindir="$HOME/bin6.0" \
		--pkg-config-flags="--static" \
		--extra-cflags="-I$HOME/ffmpeg6.0_build/include" \
		--extra-cflags="-I$HOME/ffmpeg6.0_build/include/fdk-aac" \
		--extra-ldflags="-L$HOME/ffmpeg6.0_build/lib" \
		--enable-gpl \
		--enable-libass \
		--enable-libfreetype \
		--enable-libvorbis \
		--enable-pic \
		--enable-shared \
		--enable-static \
		--enable-nonfree \
		--enable-libx264 \
		--enable-libx265 \
		--enable-libvpx \
		--enable-libfdk-aac \
		--enable-libmp3lame \
		--enable-libopus \
		--enable-sdl2 \
		--enable-ffplay \
		--disable-optimizations \
		--disable-stripping \
		--enable-debug=3 \
	&& make \
	&& make install
