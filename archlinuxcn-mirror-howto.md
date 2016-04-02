# ArchlinuxCN 镜像使用帮助  

Arch Linux 中文社区仓库 是由 Arch Linux 中文社区驱动的非官方用户仓库。包含中文用户常用软件、工具、字体/美化包等。  
完整的包信息列表（包名称/架构/维护者/状态）请 [点击这里](https://github.com/archlinuxcn/repo) 查看。  
* [官方仓库地址](http://repo.archlinuxcn.org)  
* [镜像地址](http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/)  

## 使用方法  

* 在 <code>/etc/pacman.conf</code> 文件末尾添加以下两行：  
<pre><code>[archlinuxcn]  
SigLevel = Optional TrustedOnly  
Server = http://archlinuxcn.mirrors.cqupt.edu.cn/$arch</code></pre>  

* 安装 <code>archlinuxcn-keyring</code> 包导入 <code>GPG key</code> 。  
<br>
### 解决安装archlinuxcn-kyring时密匙无法在本地签署问题  

由于升级到了 <code>gnupg-2</code>，<code>pacman</code> 上游更新了密钥环的格式，这使得本地的主密钥无法签署其它密钥。因此我们建议您安装 haveged 来解决此问题。在终端中执行以下命令：  
<pre><code>sudo pacman -Syu haveged  
sudo systemctl start haveged  
sudo systemctl enable haveged  
<br>
sudo rm -fr /etc/pacman.d/gnupg  
sudo pacman-key --init  
sudo pacman-key --populate archlinux  
sudo pacman-key --populate archlinuxcn</code></pre>  
<br>
[原文链接](https://www.archlinuxcn.org/gnupg-2-1-and-the-pacman-keyring/)
