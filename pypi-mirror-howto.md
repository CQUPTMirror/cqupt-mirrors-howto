# Pypi镜像使用帮助

- pypi是python包索引, 使用校内源可以加速pip安装

#使用说明

- 使用前使用`yum`或`apt`安装好`python-dev`避免日后某些包无法安装

- 首先如果不存在`~/.pip/pip.conf`

        mkdir ~/.pip/
        touch ~/.pip/pip.conf

- 然后将以下内容放入`pip.conf`

<pre><code>[global]
index-url = http://pypi.mirrors.cqupt.edu.cn/web/simple
trusted-host = pypi.mirrors.cqupt.edu.cn
timeout = 120
</code></pre>       

- 注意: pypi暂未开启https支持, 安装包时会有警告, 请无视, 开启https支持后请换用以下配置

<pre><code>[global]
index-url = https://pypi.mirrors.cqupt.edu.cn/web/simple
timeout = 120</code></pre>