#!/bin/sh

#Discover some stuff about where we are.
START_PATH=$(pwd)
THIS_FOLDER=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#libogg
BUILD_FOLDER=$THIS_FOLDER/libogg/macosx
cd $BUILD_FOLDER
xcodebuild clean SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild -configuration Release SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

#libvorbis
BUILD_FOLDER=$THIS_FOLDER/libvorbis/macosx
cd $BUILD_FOLDER
xcodebuild clean SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild -configuration Release SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

#Finish up
cd "$START_PATH"