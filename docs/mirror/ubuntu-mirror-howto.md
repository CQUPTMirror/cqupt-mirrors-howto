# Ubuntu镜像使用帮助

## 收录架构
* i386
* x86_64

## 收录版本
目前官方支持的所有版本，包括 Current 和 Future。详情可参见:  [List of releases](https://wiki.ubuntu.com/Releases)

## 使用说明

### 以下教程以 Ubuntu 18.04 LTS 为例
* 打开终端

* 备份原有 sources.list 文件:  
`sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup`

* 编辑 sources.list 文件:  
`sudo apt edit-sources`

* 清空文件中所有内容，加入以下内容，并保存：
```
deb http://mirrors.cqupt.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
```

* 刷新软件源:  
`sudo apt update`

#### 其他版本
* 若使用 Ubuntu 16.04，将 bionic 替换为 xenial
* 若使用 Ubuntu 14.04，将 bionic 替换为 trusty

## 相关链接
* [官方主页](https://www.ubuntu.com/)
* [邮件列表](https://www.ubuntu.com/support/community/mailinglists)
* [论坛](https://ubuntuforums.org/)
* [中文论坛](https://forum.ubuntu.org.cn/)
* [Wiki](https://wiki.ubuntu.com/)
* [中文Wiki](http://wiki.ubuntu.org.cn/)
* [文档](https://help.ubuntu.com/)
