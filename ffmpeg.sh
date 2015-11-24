#!/bin/sh

echo updating system
pkgman update -y

cd /boot/home
cd ffmpeg
echo updating source tree
git pull
cd ..
export PATH=/system/bin/x86:$PATH
echo downloading samples
rsync -vrltLW --timeout=60  rsync://fate-suite.ffmpeg.org/fate-suite/ /FATE

build_ffmpeg() {
	conf_file=$1
	target_dir=$2

	echo cleaning old builds
	rm -rf $target_dir
	echo begin building
	begin=`date`
	./fate.sh $conf_file
	echo $begin
	date
}

build_ffmpeg ~/fate_config.sh ~/ffmpeg-build
build_ffmpeg ~/fate_config_shared.sh ~/ffmpeg-build-shared

shutdown
