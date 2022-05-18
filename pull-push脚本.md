## git-pull/push脚本
### 1. 基础指令
- pull  
```
@echo on 
G:
cd \Documents\gitee\chinaway
git pull origin main
```
- push
```
@echo on
G:
cd \Documents\gitee\chinaway
set filename="zhangyang_home于%date:~0,4%-%date:~5,2%-%date:~8,2%~%time:~0,8%一键提交"
set "filename=%filename: =0%"
set "content=%filename%"
set "branch=main"
set "file=."
git add %file%
git commit -m %content%
git push origin %branch%
``` 
***注意分支!!!!***  
***可自定义提交者姓名***

### 全自动化方案
win10系统下,计算机管理->系统工具->任务计划程序->创建基本任务