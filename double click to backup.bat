@ECHO OFF

REM if the file path contains "&", the variable won't work. In that case, use hard coded name.
set folderToBackup=%CD%\tests\important files
set backupLocation=%CD%\tests\important files --BACKUP--
set zip=%CD%\tests\tools\7z.exe

REM date only works when this batch file is double clicked and the pc uses US language settings.
set date=%DATE:~6,4%-%DATE:~0,2%-%DATE:~3,2%

IF NOT EXIST "%backupLocation%\%date%.zip" GOTO ZIP

:ASK
ECHO the file "%backupLocation%\%date%.zip" exists, do you want to overwrite?
ECHO y (yes)
ECHO n (no and exit)
set choice=
set /p choice=Type "y/n" to make a choice 
if '%choice%'=='y' goto DELETE
if '%choice%'=='n' goto END
ECHO invalid choice: "%choice%", please try again.
goto ASK

:DELETE
del /Q "%backupLocation%\%date%.zip"

:ZIP
call "%zip%" a "%backupLocation%\%date%.zip" "%folderToBackup%\*"

:END

