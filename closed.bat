@echo off
set CMD=git symbolic-ref --short HEAD
set branch=
for /f "usebackq delims=" %%a in (`%CMD%`) do set branch=%%a
echo %branch%
echo %branch:~8%
git commit --allow-empty -m"refs closed #%branch:~8%"
git push origin %branch%

exit /b 0
