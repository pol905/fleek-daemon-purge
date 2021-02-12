@ECHO off

FOR /F "tokens=2" %%c IN ('@CMDKEY /list ^| @FINDSTR space:space') do (@CMDKEY /delete:%%c)

@RD /S /Q "C:\\Users\\%USERNAME%\\.fleek-ipfs"
@RD /S /Q "C:\\Users\\%USERNAME%\\.fleek-space"
@RD /S /Q "C:\\Users\\%USERNAME%\\.buckd"

@ECHO Removed credentials and deleted space associated folders successfully

