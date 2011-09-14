@ECHO off
cls
:start
ECHO.
ECHO Y. Print Hello
ECHO N. Print Bye
ECHO 3. Print Test
set choice=
set /p choice=Type "y/n" to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto hello
if '%choice%'=='n' goto bye
if '%choice%'=='3' goto test
ECHO "%choice%" is not valid please try again
goto start

:hello
ECHO HELLO
goto end

:bye
ECHO BYE
goto end

:test
ECHO TEST
goto end

:end
