#!/bin/sh

#ogg vorbis is build by making a copy of the macosx xcode project into a folder called ios and then overriding
#that project to build for ios. The xcode project itself will still compile for normal osx. This script is what
#makes the ios build work.

#Discover some stuff about where we are.
START_PATH=$(pwd)
THIS_FOLDER=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#libogg
BUILD_FOLDER=$THIS_FOLDER/libogg/ios
cd $BUILD_FOLDER
xcodebuild clean -sdk iphoneos SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

xcodebuild -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv7 armv7s arm64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

#libvorbis
BUILD_FOLDER=$THIS_FOLDER/libvorbis/ios
cd $BUILD_FOLDER
xcodebuild clean -sdk iphoneos SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

xcodebuild -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO ARCHS="armv7 armv7s arm64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

#Finish up
cd "$START_PATH"