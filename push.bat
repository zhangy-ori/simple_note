@echo off

set filename="zhangyang_home��%date%һ���ύ"

set "filename=%filename: =0%"

set "content=%filename%"

set "branch=main"

set "file=."

git add %file%

git commit -m %content%

git push origin %branch%

