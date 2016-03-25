#!/bin/bash

# You should adjust this path depending on your platform, e.g. darwin-x86_64 for Mac OS
export TOOLCHAIN=$ANDROID_NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64
export SYSROOT=$ANDROID_NDK/platforms/android-9/arch-arm/
export CPU=arm
export PREFIX=$(pwd)/android/$CPU
./configure \
	--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
	--sysroot=$SYSROOT \
	--prefix=$PREFIX \
	--enable-static \
	--host="arm-linux" \
	--enable-shared
