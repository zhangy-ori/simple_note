@echo off

set filename="zhangyang_home��%date:~0,4%-%date:~5,2%-%date:~8,2%~%time:~0,2%:%time:~3,2%һ���ύ"

set "filename=%filename: =0%"

set "content=%filename%"

set "branch=main"

set "file=."

git add %file%

git commit -m %content%

git push origin %branch%

pause
