#!/bin/bash

SYSROOT=$ANDROID_NDK/platforms/android-9/arch-arm/
# You should adjust this path depending on your platform, e.g. darwin-x86_64 for Mac OS
TOOLCHAIN=$ANDROID_NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64
CPU=arm
PREFIX=$(pwd)/android/$CPU
CFLAGS=-I/Users/xiaoyingchun/Downloads/android-ndk/sources/x264-android/android/arm/include
LDFLAGS=-L/Users/xiaoyingchun/Downloads/android-ndk/sources/x264-android/android/arm/lib
# Set these if needed

./configure \
        --prefix=$PREFIX \
	--enable-shared \
	--disable-doc \
        --disable-ffmpeg \
        --disable-ffplay \
        --disable-ffprobe \
        --disable-ffserver \
        --disable-doc \
        --disable-symver \
        --enable-muxer=mp4 \
        --enable-demuxer=mov \
        --enable-memalign-hack \
	--enable-gpl \
	--enable-libx264 \
	--enable-encoder=libx264 \
        --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
        --target-os=linux \
        --arch=arm \
        --enable-cross-compile \
        --sysroot=$SYSROOT \
        --extra-cflags=$CFLAGS \
        --extra-ldflags=$LDFLAGS