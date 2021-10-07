# Ubuntu 镜像使用帮助

## 收录架构
* i386
* x86_64

## 收录版本
目前官方支持的所有版本，包括 Current 和 Future。详情可参见:  [List of releases](https://wiki.ubuntu.com/Releases)

## 使用说明

### 一键换源

```bash
_redrock='cp /etc/apt/sources.list /etc/apt/sources.list.backup && sed -i -r "s#([A-z]+.)?(archive|security)\.ubuntu\.com/#mirrors.cqupt.edu.cn/#g" /etc/apt/sources.list'; if [ "$(id -u)" != "0" ]; then if command -v sudo > /dev/null 2>&1; then sudo sh -c "$_redrock"; else su -c sh -c "$_redrock"; fi; else eval "$_redrock"; fi; unset _redrock
```

将以上命令复制进终端执行即可。

### 手动换源
* 打开终端

* 备份原有 sources.list 文件:  
`sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup`

* 编辑 sources.list 文件:  
`sudo apt edit-sources`

* 清空文件中所有内容，加入以下内容，并保存：
```
deb http://mirrors.cqupt.edu.cn/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb http://mirrors.cqupt.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.cqupt.edu.cn/ubuntu/ focal-security main restricted universe multiverse
```

* 刷新软件源:  
`sudo apt update`

#### 其他版本
* 若使用 Ubuntu 18.04，将 focal 替换为 bionic
* 若使用 Ubuntu 16.04，将 focal 替换为 xenial
* 若使用 Ubuntu 14.04，将 focal 替换为 trusty

## 相关链接
* [官方主页](https://www.ubuntu.com/)
* [邮件列表](https://www.ubuntu.com/support/community/mailinglists)
* [论坛](https://ubuntuforums.org/)
* [中文论坛](https://forum.ubuntu.org.cn/)
* [Wiki](https://wiki.ubuntu.com/)
* [中文Wiki](http://wiki.ubuntu.org.cn/)
* [文档](https://help.ubuntu.com/)

本镜像仅包含 32/64 位 x86 架构处理器的软件包，在 ARM(arm64, armhf)、PowerPC(ppc64el)、RISC-V(riscv64) 和 S390x 等架构的设备上（对应官方源为ports.ubuntu.com）请使用 ubuntu-ports 镜像。
