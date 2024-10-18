@echo off

title gamemode.bat

:: Stopping unnecessary services
for /f "tokens=1,2 delims=," %%a in (services.csv) do (
	if "%%b"=="Y" net stop "%%a"
)

:: Killing unnecessary processes
for /f "tokens=1,2 delims=," %%a in (processes.csv) do (
	if "%%b"=="Y" taskkill /f /im "%%a"
)

pause