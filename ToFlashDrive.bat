@echo off
setlocal enabledelayedexpansion
IF NOT EXIST "C:\Windows\destination.d" (
set /p des=Enter your destination here:
echo !des! > "C:\Windows\destination.d"
)
set mydocument=%userprofile%\documents
set desktop=%userprofile%\Desktop
for /f %%A in (C:\Windows\destination.d) do set location=%%A
IF NOT EXIST %location%\backup md %location%\backup
robocopy /mir /w:1 /r:3 /x /v /ts /fp /np C:\backup %location%\backup