@echo off
setlocal ENABLEDELAYEDEXPANSION 

set pwd=%cd%
cd %~dp0%..\
set root=%cd%\
cd %pwd%

set PHP_CODE_DIR=%root%php\
set JAVA_CODE_DIR=%root%src\main\java\
set OC_CODE_DIR=%root%oc\
set JAVA_RESOURCES_DIR=%root%src\main\resources\
set THRIFT_DEFINE_DIR=%root%define\
set THRIFT_CMD=%root%utils\thrift-0.9.1.exe
set THRIFT_FILE=%THRIFT_DEFINE_DIR%.thrift.tmp

echo generate thrift file start
cd %THRIFT_DEFINE_DIR%
dir /s /b *.thrift > .tmp.txt
for /f %%F in (.tmp.txt) do (
	set l=%%F
	set l=!l:%THRIFT_DEFINE_DIR%=!
	set l=!l:\=/!
	echo include "!l!">>%THRIFT_FILE%
)
del .tmp.txt
cd %pwd%
echo done

echo clean up php code
rmdir /s /q %PHP_CODE_DIR%
mkdir %PHP_CODE_DIR%
echo done

echo clean up java code
rmdir /s /q %JAVA_CODE_DIR%
mkdir %JAVA_CODE_DIR%
echo done

echo clean up oc code
rmdir /s /q %OC_CODE_DIR%
mkdir %OC_CODE_DIR%
echo done

echo generate php code %PHP_CODE_DIR%
%THRIFT_CMD% -r -gen php -out %PHP_CODE_DIR% %THRIFT_FILE%
echo done

echo generate oc code %OC_CODE_DIR%
%THRIFT_CMD% -r -gen cocoa -out %OC_CODE_DIR% %THRIFT_FILE%
echo done

echo generate java code to %JAVA_CODE_DIR%
%THRIFT_CMD% -r -gen java -out %JAVA_CODE_DIR% %THRIFT_FILE%
copy %THRIFT_DEFINE_DIR%register-services.xml %JAVA_RESOURCES_DIR%register-services.xml 1 > nul 
echo done

del %THRIFT_FILE%
pause
