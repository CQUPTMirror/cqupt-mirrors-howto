# PyPi 反向代理使用帮助

- pypi是python包索引, 使用校内源可以加速pip安装

# 使用说明

- 使用前使用`yum`或`apt`安装好`python-dev`避免日后某些包无法安装

- 首先如果不存在`~/.pip/pip.conf`

```bash
mkdir ~/.pip/
touch ~/.pip/pip.conf
```

- 然后将以下内容放入`pip.conf`

```ini
[global]
index-url = https://mirrors.cqupt.edu.cn/pypi/simple
timeout = 120
```       
- pip >= 10.0.0 操作方法：

```shell
pip install pip -U
pip config set global.index-url https://mirrors.cqupt.edu.cn/pypi/simple
```