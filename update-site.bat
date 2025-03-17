@echo off

:loop
git add classresults.html rawresults.html
git commit -m "Auto-update pages - %DATE% %TIME% || echo No changes to commit"
git push
timeout /t 60 /nobreak >nul
goto loop