# ArchLinux 镜像使用帮助


## 收录架构

- i686 (32位)
- x86_64 (64位)

## 收录版本

- 滚动发行版

## 使用说明

编辑`/etc/pacman.d/mirrorlist`，先注释掉里面的所有行，然后在文件的最顶端添加

<pre><code>Server = http://mirrors.cqupt.edu.cn/archlinux/$repo/os/$arch</code></pre>

## 相关链接

- [官方主页](https://www.archlinux.org)
- [邮件列表](https://www.archlinux.org/mailman/listinfo/)
- [论坛](https://bbs.archlinux.org/)
- [wiki](https://wiki.archlinux.org/)
