# NPM 镜像使用说明

![rednpm](https://dn-redrock.qbox.me/rednpm.png)

**部署于 中国教育和科研计算机网 (CERNET) 重庆 - 重庆邮电大学节点**

官网: https://npm.mirror.cqupt.edu.cn/

## Usage
- 使用 `rednpm` 客户端 *recommended*

```bash
# 安装 rednpm 客户端
$ npm i rednpm -g --registry=https://registry.mirror.cqupt.edu.cn
$ rednpm i [package-name] --save
```

- 或者直接使用 npm

```bash
$ npm i [package-name] --save --registry=https://registry.mirror.cqupt.edu.cn
```

- 或者使用 npm 并 alias 一个新的命令 [如需保存请保存到 .bashrc 或者.zshrc / .fishrc]

```bash
alias rednpm="npm --registry=https://registry.mirror.cqupt.edu.cn \
--cache=$HOME/.npm/.cache/rednpm \
--disturl=https://npm.taobao.org/mirrors/node \
--userconfig=$HOME/.rednpmrc"
```

## 基本信息
- 初次同步量 10W packages
- 每隔 10 分钟从淘宝源更新
- registry 地址: http://registry.mirror.cqupt.edu.cn/

## 手动同步模块

直接通过 `sync` 命令马上同步一个模块, 只有  rednpm 客户端才有此功能:

```bash
$ rednpm sync [name]
```

或者使用 web 方式同步:

```bash
# eg. 同步 co模块 
$ open https://registry.mirror.cqupt.edu.cn/sync/co
```

## 相关链接

- [REDNPM](https://npm.mirror.cqupt.edu.cn)
- [npmjs.org](https://npmjs.org/)
- [TaoNpm](https://npm.taobao.org/)
- [Ling.](https://zeroling.com)

## Contact
- Bug Report to i#zeroling.com