# Debian 镜像使用帮助

## 收录架构

* i386
* amd64
* source

## 收录发行版本

* [stable](https://wiki.debian.org/DebianStable)
* [testing](https://wiki.debian.org/DebianTesting)
* [unstable](https://wiki.debian.org/DebianUnstable)
* [oldstable](https://wiki.debian.org/DebianOldStable)

## 使用说明

以 sid 为例, 编辑 /etc/apt/sources.list 文件：
`sudo apt edit-sources`

将文件内容替换为：
```
deb http://mirrors.cqupt.edu.cn/debian sid main contrib non-free
deb-src http://debian.mirrors.cqupt.edu.cn/ sid main contrib non-free
```

如果使用的是其他版本，将其中的 sid 改为相应的发行版本代号即可。

关于 Debian 版本可以看这里：https://www.debian.org/releases/
