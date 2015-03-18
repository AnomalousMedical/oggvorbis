pushd %~dp0
cd libogg\android
call ndk-build APP_ABI=armeabi-v7a clean
call ndk-build APP_ABI=armeabi-v7a
cd ../..
cd libvorbis\android
call ndk-build APP_ABI=armeabi-v7a clean
call ndk-build APP_ABI=armeabi-v7a
cd ../..
popd