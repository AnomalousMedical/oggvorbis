pushd %~dp0
cd libogg\android
call ndk-build
cd ../..
cd libvorbis\android
call ndk-build
cd ../..
popd