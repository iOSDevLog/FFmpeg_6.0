#!/bin/bash

MY_HOME="$HOME"
sudo bash -c "echo \"$MY_HOME/ffmpeg6.0_build/lib\" > /etc/ld.so.conf.d/ffmpeg.conf"
sudo ldconfig

if grep -q 'export PATH=$HOME/bin6.0:$PATH' ~/.bashrc; then
	echo "FFmpeg path already present, do nothing"
else
	echo 'export PATH=$HOME/bin6.0:$PATH' >> ~/.bashrc
	source ~/.bashrc
	echo "Set FFmpeg path done"
fi
export PATH=$HOME/bin6.0:$PATH
ffplay http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4
