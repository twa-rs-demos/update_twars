# Update Recruiting System

## 作用
更新下列子库代码，重新打包或者重启服务

1. web
2. teacher-admin-web
3. web-api
4. paper-api


## 使用之前
你需要修改 `update_twars.sh` 第 15 行
```
twars='/home/afaren/twars'	# path of Recruiting System, change it in your own computer
```

将 twars 值改为你自己电脑上项目路径，比如 `/home/Luffy/recruiting-system/ `


## 如何使用
执行命令
```
./update_twars.sh
```
即可更新子库，并且打包代码或者重启服务

> 注意：更新的四个子库都是跑在本地而不是 Docker 容器内的。另外，需要手动启动 Mysql & MongoDB
