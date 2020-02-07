# Debian 各镜像使用帮助

## 收录架构

Debian 支持的所有架构，如 AMD64 (x86_64), Intel x86, ARM, MIPS, ppc64el, s390x 等

## 收录发行版本

* [stable](https://wiki.debian.org/DebianStable)
* [testing](https://wiki.debian.org/DebianTesting)
* [unstable(sid)](https://wiki.debian.org/DebianUnstable)
* [oldstable](https://wiki.debian.org/DebianOldStable)

## 使用说明
### Debian

一般情况下，将 /etc/apt/sources.list 文件中 Debian 默认的源地址 http://deb.debian.org/ 替换为 http://mirrors.cqupt.edu.cn 即可。

可以使用如下命令：

```shell
sudo sed -i 's/deb.debian.org/mirrors.cqupt.edu.cn/g' /etc/apt/sources.list
```

当然也可以直接编辑 /etc/apt/sources.list 文件（需要 root 权限）。以下是 Debian Sid 参考配置内容：
`sudo apt edit-sources`

将文件内容替换为：
```
deb http://mirrors.cqupt.edu.cn/debian sid main contrib non-free
deb-src http://debian.mirrors.cqupt.edu.cn/ sid main contrib non-free
```

如果使用的是其他版本，将其中的 sid 改为相应的发行版本代号即可。

### Debian Security

```shell
sudo sed -i 's|security.debian.org/debian-security|mirrors.cqupt.edu.cn/debian-security|g' /etc/apt/sources.list
```

### Debian 本体

需要安装 Debian 时，一般下载 CD ISO 中的第一个即可，比如 64 位机器下载 https://mirrors.cqupt.edu.cn/debian-cd/current/amd64/iso-cd/ 中以 amd64-CD-1.iso 结尾的文件 即可。

如果安装时可以联网，也可以下载更小的网络安装版的 ISO（以 netinst.iso 结尾的文件）。

如果需要离线安装桌面环境，可以选择不同桌面的 CD-1.iso 文件，如 amd64-xfce-CD-1.iso 结尾的文件中 就包含了离线安装 xfce 所需的内容。

## 相关链接
关于 Debian 版本可以看这里：https://www.debian.org/releases/
