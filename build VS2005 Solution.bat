@ECHO OFF

REM Setting environment for using Microsoft Visual Studio 2005 x86 tools.
CALL "C:\Program Files\Microsoft Visual Studio 8\Common7\Tools\vsvars32.bat"

ECHO begin to build Release
set solutionPath=c:\code\test.sln
devenv /Rebuild "Release" "%solutionPath%"

PAUSE
