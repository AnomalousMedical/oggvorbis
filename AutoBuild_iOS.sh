#!/bin/sh

#Discover some stuff about where we are.
START_PATH=$(pwd)
THIS_FOLDER=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#libogg
BUILD_FOLDER=$THIS_FOLDER/libogg/ios
cd $BUILD_FOLDER
xcodebuild clean -sdk iphonesimulator8.1 SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild clean -sdk iphoneos8.1 SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

xcodebuild -configuration Release -sdk iphonesimulator8.1 ONLY_ACTIVE_ARCH=NO ARCHS="i386 x86_64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild -configuration Release -sdk iphoneos8.1 ONLY_ACTIVE_ARCH=NO ARCHS="armv7 armv7s arm64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

rm -r build/Release
mkdir build/Release
lipo -create build/Release-iphoneos/libOgg.a build/Release-iphonesimulator/libOgg.a -output build/Release/libOgg.a

#libvorbis
BUILD_FOLDER=$THIS_FOLDER/libvorbis/ios
cd $BUILD_FOLDER
xcodebuild clean -sdk iphonesimulator8.1 SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild clean -sdk iphoneos8.1 SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

xcodebuild -configuration Release -sdk iphonesimulator8.1 ONLY_ACTIVE_ARCH=NO ARCHS="i386 x86_64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"
xcodebuild -configuration Release -sdk iphoneos8.1 ONLY_ACTIVE_ARCH=NO ARCHS="armv7 armv7s arm64" SHARED_PRECOMPS_DIR="$BUILD_FOLDER/SharedTmpPCH"

rm -r build/Release
mkdir build/Release
lipo -create build/Release-iphoneos/libVorbis.a build/Release-iphonesimulator/libVorbis.a -output build/Release/libVorbis.a

#Finish up
cd "$START_PATH"