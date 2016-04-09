<h2>Libjpeg-turbo nuget package script</h2>
<p>This is a script I wrote for automated building of the libjpeg-turbo nuget package that I maintain.</p>
<h3>Dependencies:</h3>
<ul>
<li>Cmake: Download and install the latest from here https://cmake.org/download/</li>
<li>7Zip: Download and install the latest from here http://7-zip.org/download.html</li>
<li>Libjpeg-Turbo: Download the latest release <b>.tar.gz</b> from here https://github.com/libjpeg-turbo/libjpeg-turbo/releases</li>
</ul>
<p>After installing Cmake and 7zip, download the <b>.tar.gz</b> file and place it in the same location as the scripts.<p>
<p>Run build.bat</p>
<p>This will build VS2013 VS2015 x86 x64 /MT /MD ndk x86_64 x86 mips mips64 armeabi-v7a arm64-v8a armeabi armeabi-v7a-hard both dynamic and static</p>
