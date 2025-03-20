@echo off

:loop

set "source=C:\Program Files (x86)\Axware Systems\AXWare TS\announcer\results_live.html"
set "dest=C:\users\hayde\documents\wkyautox\results_live.html"

if exist "%source%" (
    if exist "%dest%" (
        fc /b "%source%" "%dest%" >nul
        if errorlevel 1 copy /Y "%source%" "%dest%" >nul
    ) else (
        copy /Y "%source%" "%dest%" >nul
    )
)

git add results_live.html
git commit -m "Auto-update pages - %DATE% %TIME% || echo No changes to commit"
git push
timeout /t 60 /nobreak >nul
goto loop