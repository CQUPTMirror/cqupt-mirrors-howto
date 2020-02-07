# ELRepo 镜像使用帮助

> ELRepo 是一个提供 Enterprise Linux 包的 RPM 仓库。主要支持RHEL及其衍生版（Scientific Linux，CentOS等）,专注于提供硬件相关的包，以提高 Enterprise Linux 的使用体验。包括文件系统驱动，图形驱动，网络渠道，声卡驱动，摄像头以及视频驱动。

## 收录架构

- i386
- x86_64
- SRPMS

## 使用说明
导入 gpgkey：

`rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org`

添加 elrepo 源：
```shell
# RHEL-8 或 CentOS-8:
yum install https://www.elrepo.org/elrepo-release-8.0-2.el8.elrepo.noarch.rpm
# RHEL-7，SL-7 或 CentOS-7:
yum install https://www.elrepo.org/elrepo-release-7.0-4.el7.elrepo.noarch.rpm
# RHEL-6, SL-6 或 CentOS-6:
yum install https://www.elrepo.org/elrepo-release-6-9.el6.elrepo.noarch.rpm
```

以CentOS 7为例, 复制下面的两个文件覆盖到`/etc/yum.repos.d/elrepo.repo`, 如果是`4`,`5`,`6`, 将`7`替换掉即可

- `elrepo.repo`
	
```ini
[elrepo]
name=ELRepo.org Community Enterprise Linux Repository - el7
baseurl=https://mirrors.cqupt.edu.cn/elrepo/elrepo/el7/$basearch/
#mirrorlist=http://mirrors.elrepo.org/mirrors-elrepo.el7
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org
protect=0

[elrepo-testing]
name=ELRepo.org Community Enterprise Linux Testing Repository - el7
baseurl=https://mirrors.cqupt.edu.cn/elrepo/testing/el7/$basearch/
#mirrorlist=http://mirrors.elrepo.org/mirrors-elrepo-testing.el7
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org
protect=0

[elrepo-kernel]
name=ELRepo.org Community Enterprise Linux Kernel Repository - el7
baseurl=https://mirrors.cqupt.edu.cn/elrepo/kernel/el7/$basearch/
#mirrorlist=http://mirrors.elrepo.org/mirrors-elrepo-kernel.el7
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org
protect=0

[elrepo-extras]
name=ELRepo.org Community Enterprise Linux Extras Repository - el7
baseurl=https://mirrors.cqupt.edu.cn/elrepo/extras/el7/$basearch/
#mirrorlist=http://mirrors.elrepo.org/mirrors-elrepo-extras.el7
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org
protect=0
gpgcheck=1
```

## 相关链接

ELRepo 主页: http://elrepo.org/tiki/tiki-index.php

Q&A: http://elrepo.org/tiki/tiki-index.php