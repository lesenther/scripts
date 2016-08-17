REM Run this batch file as an administrator
REM
REM This Batch file removes the Windows 10 Universal OneNote App and adds the Registry key to associate the Surface Pro Stylus withthe Desktop version of OneNote
REM This will only work if the Desktop Version of OneNote is already installed.
REM 
REM This has been tested on Windows 10 x64 with OneNote Desktop from Office 2013 
REM
REM Remove Universal OneNote App
powershell.exe -command $d=get-appxpackage Microsoft.One.Note;Remove-AppxPackage $d

powershell.exe -command $d=get-appxpackage *OneNote*;Remove-AppxPackage $d

REM Add association for Surface Pro Stylus button
reg add hkcr\onenote-cmd\Shell\Open\Command /d "\"C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE\"" /f