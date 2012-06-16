#!/bin/sh
LOCALVER="-perf-CL882825"
CCOMPILER=../../toolchain/arm-eabi-4.4.3/bin/arm-eabi-
make ARCH=arm CROSS_COMPILE=$CCOMPILER cooper_rev03_eng_defconfig
make ARCH=arm CROSS_COMPILE=$CCOMPILER LOCALVERSION=$LOCALVER -j 2
cp arch/arm/boot/zImage ../rom/2.3.4/S5830XWKTE_S5830EPLKP3_ELP/CL882825/kernel
cp drivers/net/tun.ko ../rom/2.3.4/S5830XWKTE_S5830EPLKP3_ELP/CL882825/prebuilt/tun.ko
cp fs/cifs/cifs.ko ../rom/2.3.4/S5830XWKTE_S5830EPLKP3_ELP/CL882825/prebuilt/cifs.ko
