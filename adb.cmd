@echo off

Echo.%PATH% | findstr /C:"C:\Program Files\platform-tools" || (
   	curl https://dl.google.com/android/repository/platform-tools-latest-windows.zip --output %temp%\adb.zip
	tar -xf %temp%\adb.zip 
	echo Y|del %temp%\adb.zip
	robocopy platform-tools "C:\Program Files\platform-tools"
	echo Y | rmdir /s platform-tools
	setx path "%PATH%;C:\Program Files\platform-tools\;" /M	
)
