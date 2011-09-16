@ECHO OFF

set targetFolder="target path"
set sourceFolder1="path1"
set sourceFolder2="path2"

ECHO delete target folder first
del /s  /Q %targetFolder%
rmdir /s /Q %targetFolder%
mkdir %targetFolder%

ECHO copy from different sources to the target folder...
xcopy /y /e %sourceFolder1% %targetFolder%
xcopy /y /e %sourceFolder2% %targetFolder%

PAUSE
