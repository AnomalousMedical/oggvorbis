set Platform=x64
set SolutionName=libogg\win32\VS2010\libogg_static.sln

::Less likely to need to change these.
set ThisFolder=%~dp0
set RootDependencyFolder=%ThisFolder%..\
set BuildCommand="C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /m
set CurrentDirectory=%CD%

::Actual build process
%BuildCommand% "%SolutionName%" /property:Configuration=Debug;Platform=%Platform%
%BuildCommand% "%SolutionName%" /property:Configuration=Release;Platform=%Platform%