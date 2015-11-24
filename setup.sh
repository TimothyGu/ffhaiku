#!/bin/sh

pkgman update
pkgman install git rsync vim

git clone https://github.com/TimothyGu/ffhaiku

# Start up settings
cp ffhaiku/config/settings/boot/launch/* config/settings/boot/launch

# Cloning FFmpeg
# git clone git://source.ffmpeg.org/ffmpeg.git ffmpeg
wget https://www.ffmpeg.org/releases/ffmpeg-snapshot-git.tar.bz2
tar -xf ffmpeg-snapshot-git.tar.bz2
rm ffmpeg-snapshot-git.tar.bz2

mkdir ffmpeg-build
mkdir ffmpeg-build-shared

# Getting samples
cd ffmpeg-build
../ffmpeg/configure --samples=/FATE --disable-everything
# be patient; emulating isn't very fast, and bash isn't either
make fate-rsync
