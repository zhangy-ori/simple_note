@echo on

set filename="zhangyang_company��%date:~0,4%-%date:~5,2%-%date:~8,2%~%time:~0,8%һ���ύ"

set "filename=%filename: =0%"

set "content=%filename%"

set "branch=main"

set "file=."

git add %file%

git commit -m %content%

git push origin %branch%

