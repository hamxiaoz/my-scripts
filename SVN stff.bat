@ECHO off

REM do SVN update
set updateFolder=C:\Code\Test
cd "%updateFolder%"
svn update

REM export files from SVN
call svn export "%file1_url_on_svn%"
call svn export "%file2_url_on_svn%"

PAUSE
