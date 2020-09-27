# Anaconda镜像源食用指南

首页：https://mirrors.cqupt.edu.cn/

## Anaconda换源

Anaconda 是一个用于科学计算的 Python 发行版，支持 Linux, Mac, Windows, 包含了众多流行的科学计算、数据分析的 Python 包。

Anaconda 安装包可以到 https://mirrors.cqupt.edu.cn/anaconda/archive/ 下载。

镜像源还提供了 Anaconda 仓库与第三方源（conda-forge、msys2、pytorch等，[查看完整列表](https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/)）的镜像，各系统都可以通过修改用户目录下的 `.condarc` 文件。

Windows 用户无法直接创建名为 `.condarc` 的文件（Linux在~/目录下没有该文件也一样），可先执行 `conda config --set show_channel_urls yes` 会生成该文件，然后将以下内容填入该文件内。

```
channels:
  - defaults
show_channel_urls: true
channel_alias: https://mirrors.cqupt.edu.cn/anaconda
default_channels:
  - https://mirrors.cqupt.edu.cn/anaconda/pkgs/main
  - https://mirrors.cqupt.edu.cn/anaconda/pkgs/free
  - https://mirrors.cqupt.edu.cn/anaconda/pkgs/r
  - https://mirrors.cqupt.edu.cn/anaconda/pkgs/pro
  - https://mirrors.cqupt.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.cqupt.edu.cn/anaconda/cloud
  msys2: https://mirrors.cqupt.edu.cn/anaconda/cloud
  bioconda: https://mirrors.cqupt.edu.cn/anaconda/cloud
  menpo: https://mirrors.cqupt.edu.cn/anaconda/cloud
  pytorch: https://mirrors.cqupt.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.cqupt.edu.cn/anaconda/cloud

```

即可添加 Anaconda Python 免费仓库。

运行 `conda clean -i` 清除索引缓存，保证用的是镜像站提供的索引。

运行 `conda create -n myenv python=3.7` 测试一下吧。

测试成功以后，您就可以先用`conda search xxx`来查找包或者库是否存在以及版本号，然后使用`conda install xxx=???`来安装啦。

eg：

conda search tensorflow-gpu

conda install tensorflow-gpu=2.1.0



## Miniconda 镜像使用帮助

Miniconda 是一个 Anaconda 的轻量级替代，默认只包含了 python 和 conda，但是可以通过 pip 和 conda 来安装所需要的包。

Miniconda 安装包可以到 https://mirrors.cqupt.edu.cn/anaconda/miniconda/ 下载。
