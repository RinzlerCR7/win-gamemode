@echo off

title gamemode.bat

set path=%~dp0

:: Stopping unnecessary services
for /f "tokens=1,2 delims=," %%a in (%path%services.csv) do (
	if "%%b"=="Y" net stop "%%a"
)

:: Killing unnecessary processes
for /f "tokens=1,2 delims=," %%a in (%path%processes.csv) do (
	if "%%b"=="Y" taskkill /f /im "%%a"
)

pause