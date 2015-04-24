call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools\VsDevCmd.bat"

pushd %~dp0
cd libogg\android
call ndk-build APP_ABI=x86 clean
call ndk-build APP_ABI=x86
cd ../..
cd libvorbis\android
call ndk-build APP_ABI=x86 clean
call ndk-build APP_ABI=x86
cd ../..
popd