REM Including the path.
set PATH=C:\Qt\Tools\QtInstallerFramework\4.5\bin;C:\Qt\Tools\CMake_64\bin;C:\Qt\6.5.1\msvc2019_64\bin;%PATH%

REM Copying packages.
xcopy/y/s Release\* Deployment\packages\com.maskromtool.installerwin64\data\

cd Deployment
echo Building the installer executable.
binarycreator.exe -c config\config.xml -p packages -f MaskRomToolInstaller
cd ..
