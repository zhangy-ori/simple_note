@echo on
G:
cd \Documents\gitee\chinaway
set filename="zhangyang_home于%date:~0,4%-%date:~5,2%-%date:~8,2%~%time:~0,8%一键提交"
set "filename=%filename: =0%"
set "content=%filename%"
set "branch=master"
set "file=."
git add %file%
git commit -m %content%
git push origin %branch%