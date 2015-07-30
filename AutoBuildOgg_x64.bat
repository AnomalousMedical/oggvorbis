set Platform=x64
set SolutionName=libogg\win32\VS2010\libogg_static.sln

::Less likely to need to change these.
set ThisFolder=%~dp0
set RootDependencyFolder=%ThisFolder%..\
set CurrentDirectory=%CD%

::Actual build process
msbuild.exe "%SolutionName%" /property:Configuration=Debug;Platform=%Platform%
msbuild.exe "%SolutionName%" /property:Configuration=Release;Platform=%Platform%