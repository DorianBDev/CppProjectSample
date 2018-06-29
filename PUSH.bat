@echo off
git add --all
git add --all
set /p id=Enter title: 
git commit -m "%id%"
git push -u origin master
pause