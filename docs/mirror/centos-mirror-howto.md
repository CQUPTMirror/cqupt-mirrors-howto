# CentOS 镜像使用帮助


## 收录架构

- i386 (32位)
- x86_64 (64位)

## 收录版本
主要收录

- CentOS 6.0 以上版本

## 使用说明

将下列对应版本配置文件替换`/etc/yum.repos.d/CentOS-Base.repo`内容, 然后运行`yum makecache`生成缓存


- CentOS-6

```ini
[base]
name=CentOS-$releasever - Base
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/os/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-6

[updates]
name=CentOS-$releasever - Updates
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/updates/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-6

[extras]
name=CentOS-$releasever - Extras
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/extras/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-6
```

- CentOS-7

```ini
[base]
name=CentOS-$releasever - Base
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/os/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-7

[updates]
name=CentOS-$releasever - Updates
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/updates/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-7

[extras]
name=CentOS-$releasever - Extras
baseurl=http://mirrors.cqupt.edu.cn/centos/$releasever/extras/$basearch/
gpgcheck=1
gpgkey=http://mirrors.cqupt.edu.cn/centos/RPM-GPG-KEY-CentOS-7
```
        
        
        
## 相关链接

- [官方主页](http://www.centos.org/)
- [邮件列表](https://wiki.centos.org/GettingHelp/ListInfo)
- [论坛](https://www.centos.org/forums/)
- [文档](https://www.centos.org/docs/)
- [wiki](https://wiki.centos.org/)




