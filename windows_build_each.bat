SET v1=%~1
SET v2=%~2
SET v3=%~3
SET v4=%~4
SET v5=%~5
if exist "C:/Program Files (x86)/MSBuild/12.0/Bin/msbuild.exe" (
	set msbuild="C:/Program Files (x86)/MSBuild/12.0/Bin/msbuild.exe"
)
if exist "C:/Program Files (x86)/MSBuild/14.0/Bin/msbuild.exe" (
	set msbuild="C:/Program Files (x86)/MSBuild/14.0/Bin/msbuild.exe"
)


call cd "%v1%"
call cmake -G "%v2%" "%v3%/%v1%/"
call cd ..
call powershell -ExecutionPolicy Bypass "%v3%/updatedebug.ps1 '%v3%/%v1%/turbojpeg-static.vcxproj' '%v5%'"
call %msbuild% %v3%/%v1%/libjpeg-turbo.sln /t:turbojpeg-static %v4%
exit