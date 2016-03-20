#   Ubuntu镜像使用帮助

##  收录架构
i386和x86_64

##  收录版本
目前官方支持的所有版本，包括Current和Future。详情可参见:  [List of releases](https://wiki.ubuntu.com/Releases)

##  使用说明

### 以下教程以Ubuntu Wily Werewolf（15.10）为例
* 打开终端

* 备份原有 sources.list 文件，在终端中输入:  
`sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup`

* 编辑 sources.list 文件，在终端中输入:  
`sudo gedit /etc/apt/sources.list`

* 清空文件中所有内容，加入以下内容，并保存：
<pre><code>deb http://mirrors.cqupt.edu.cn/ubuntu/ wily main restricted universe multiverse  
deb http://mirrors.cqupt.edu.cn/ubuntu/ wily-security main restricted universe multiverse  
deb http://mirrors.cqupt.edu.cn/ubuntu/ wily-updates main restricted universe multiverse  
deb http://mirrors.cqupt.edu.cn/ubuntu/ wily-proposed main restricted universe multiverse  
deb http://mirrors.cqupt.edu.cn/ubuntu/ wily-backports main restricted universe multiverse  
deb-src http://mirrors.cqupt.edu.cn/ wily main restricted universe multiverse  
deb-src http://mirrors.cqupt.edu.cn/ wily-security main restricted universe multiverse  
deb-src http://mirrors.cqupt.edu.cn/ wily-updates main restricted universe multiverse  
deb-src http://mirrors.cqupt.edu.cn/ wily-proposed main restricted universe multiverse  
deb-src http://mirrors.cqupt.edu.cn/ wily-backports main restricted universe multiverse</code></pre>

* 刷新软件源，在终端中输入:  
`sudo apt-get update`

####    其他版本
若使用Ubuntu Xenial Xerus（16.04），将 wily 替换为 xenial  
若使用Ubuntu Trusty Tahr（14.04），将 wily 替换为 trusty   
若使用Ubuntu Precise Pangolin（12.04），将 wily 替换为 precise

##  相关链接
* [官方主页](http://www.ubuntu.com/)
* [邮件列表](http://www.ubuntu.com/support/community/mailinglists)
* [论坛](http://ubuntuforums.org/)
* [中文论坛](http://forum.ubuntu.org.cn/)
* [Wiki](https://wiki.ubuntu.com/)
* [中文Wiki](http://wiki.ubuntu.org.cn/)
* [文档](https://help.ubuntu.com/)
