#/bin/bahs

export PATH=$HOME/bin6.0:$PATH \
	&& ./0_apt.sh \
	&& ./1_asm.sh \
	&& ./2_yasm.sh \
	&& ./3_libx264.sh \
	&& ./4_libx265.sh \
	&& ./5_libvpx.sh \
	&& ./6_libfdk-aac.sh \
	&& ./7_libmp3lame.sh \
	&& ./8_libopus.sh \
	&& ./9_ffmpeg6.0.sh \
	&& ./10_env.sh 
