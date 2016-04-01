## 解决安装archlinuxcn-kyring时密匙无法在本地签署问题  

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
<br>
[原文链接](https://www.archlinuxcn.org/gnupg-2-1-and-the-pacman-keyring/)