# 重庆邮电大学开源镜像源
> 为西南地区乃至全国和校内用户提供 Linux 镜像源和开源软件的反向代理服务。

## 有什么用？
不同于“完善”的Windows，很多开源软件和 Linux 发行版都采用软件源的方式来分发包。这些源一般都在海外，由于特殊的网络原因，从这些源获取软件的速度十分缓慢。从软件开发者的角度来看，一般可以通过使用 CDN 来解决这些问题。然而大部分开发者并没有资源（意愿）提供全球加速的服务。

因此，开源爱好者们建立了[镜像网站](https://zh.wikipedia.org/wiki/%E7%BD%91%E7%AB%99%E9%95%9C%E5%83%8F)，即通过[rsync](https://rsync.samba.org/)、FTP等方式将源站的文件全部同步到国内/单位内部的服务器上，实现高速下载。

公共镜像站一般由具有大量网络资源的高校、企业搭建，如[清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/)、[中国科学技术大学开源软件镜像](https://mirrors.ustc.edu.cn/)、[重庆大学开源软件镜像站](https://mirrors.cqu.edu.cn/)等。本站部分镜像也是同步于这些镜像站（作为二级镜像）。

## 跑的更快？
本站提供两个节点
- 电信节点（首选）：https://mirrors.redrock.team
- 教育网节点：https://mirrors.cqupt.edu.cn

电信/移动/联通用户请将网址替换为电信节点，速度为`1000Mbps`；重邮内网以及西南教育网用户可选择教育网节点。

如果不知道运营商，可通过[IPIP](https://www.ipip.net/ip.html)查询。

## 遇到问题？
若有镜像需求，可在[Github](https://github.com/CQUPTMirror/Report)上给我们提issue。

本站前端代号*redlens*，问题/意见/PR，请访问https://github.com/CQUPTMirror/redlens 。

## 致谢
详细教程主要来源于[USTC Mirror Help](http://mirrors.ustc.edu.cn/help/)。

本站使用了清华大学TUNA协会开发的同步工具[tunasync](https://github.com/tuna/tunasync)。
