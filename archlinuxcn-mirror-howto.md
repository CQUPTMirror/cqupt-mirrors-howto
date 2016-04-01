# ArchlinuxCN 镜像使用帮助  

Arch Linux 中文社区仓库 是由 Arch Linux 中文社区驱动的非官方用户仓库。包含中文用户常用软件、工具、字体/美化包等。  
完整的包信息列表（包名称/架构/维护者/状态）请 [点击这里](https://github.com/archlinuxcn/repo) 查看。  
* [官方仓库地址](http://repo.archlinuxcn.org)  
* [镜像地址](http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/)  

## 使用方法  

* 在 <code>/etc/pacman.conf</code> 文件末尾添加以下两行：  
<pre><code>[archlinuxcn]  
SigLevel = Optional TrustedOnly  
Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch</code></pre>  

* 安装 <code>archlinuxcn-keyring<code> 包导入 GPG key。