#!/bin/sh

TOPDIR=$PWD
TARGET_DIR=$1

echo $(git describe) $(date +%Y-%m-%d-%H:%M:%S) > \
	$TARGET_DIR/etc/build-id

