# Update Recruiting System

## 作用
更新下列子库代码，重新打包或者重启服务

1. web
2. teacher-admin-web
3. web-api
4. paper-api


## 如何使用
执行命令
```
./update_twars.sh  /path/to/twars
```

比如
``` 
./update_twars.sh /home/afaren/recruiting-system
```

即可更新子库，并且打包代码或者重启服务

> 注意：  
1. 执行命令时输入的路径参数需要用绝对路径  
2. 需要手动启动 Mysql & MongoDB   
3. 更新的四个子库都是跑在本地而不是 Docker 容器内的   
