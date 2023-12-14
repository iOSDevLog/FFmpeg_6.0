# FFmpeg_6.0

## Linux (WSL2)

配置环境: Ubuntu Desktop 22.04 + FFmpeg 6.0

```bash
git clone https://github.com/iOSDevLog/FFmpeg_6.0
cd FFmpeg_6.0/Linux
./all.sh
```

建议使用源码的方式编译和安装，本编译安装方式最终生成的皆为静态库。

部分命令说明：

```bash
git -C <other-git-repo-path> [git-command] 
```

指定其它路径的仓库 执行命令 注意，-C 要在命令之前

编译参考：<https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu>

### 创建目录

在home目录下创建

* ffmpeg6.0_sources：用于下载源文件
* ffmpeg6.0_build： 存储编译后的库文件
* bin6.0：存储二进制文件（ffmpeg，ffplay，ffprobe，X264，X265 等）

这里增加 6.0 的标识是为了和其他 FFmpeg 版本做区分。

### 安装依赖

安装 FFmpeg 需要使用到一些编译工具以及一些第三方库，需要通过命令安装。

### 源码编译与安装第三方库

本指南假定您要安装一些最常见的第三方库。每个小节为您提供安装该库所需的命令。

如果不需要某些功能，则可以跳过相关小节（如果不需要），然后在FFmpeg中删除相应的 `./configure` 选项。

例如，如果不需要 `libvpx`，请跳过该小节，然后从 “安装FFmpeg” 部分中删除 `--enable-libvpx`。

> 提示：如果要在多核系统中加快编译速度，可以在每个 `make` 命令（例如 `make -j4`）中使用 `-j` 选项。

FFmpeg api -> 封装的编码器，比如 H264_encoder -> 依赖 x264 开源项目

1. NASM
2. Yasm
3. libx264
	* --enable-gpl
	* --enable-libx264
4. libx265
	* --enable-gpl
	* --enable-libx265
5. libvpx
	* --enable-libvpx
6. libfdk-aac
	* --enable-gpl
	* --enable-nonfree
	* --enable-libfdk-aac
7. libmp3lame
	* --enable-libmp3lame
8. libopus
	* --enable-libopus

### 环境变量

```bash
export PATH=$PATH:$HOME/bin6.0
ffplay http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4
```
