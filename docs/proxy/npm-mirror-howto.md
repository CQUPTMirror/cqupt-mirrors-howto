# NPM 反向代理使用帮助

# 用法
- 使用 `rednpm` 客户端 *recommended*

```bash
# 安装 rednpm 客户端
$ npm i rednpm -g --registry=https://mirror.cqupt.edu.cn/npm/
$ rednpm i [package-name] --save
```

- 长期使用（npm）

```bash
$ npm config set registry https://mirror.cqupt.edu.cn/npm/
```

- 临时使用（npm）

```bash
$ npm i [package-name] --save --registry=https://mirror.cqupt.edu.cn/npm/
```

- 或者使用 npm 并 alias 一个新的命令 [如需保存请保存到 .bashrc 或者.zshrc / .fishrc]

```bash
alias rednpm="npm --registry=https://mirror.cqupt.edu.cn/npm/ \
--cache=$HOME/.npm/.cache/rednpm \
--disturl=https://npm.taobao.org/mirrors/node \
--userconfig=$HOME/.rednpmrc"
```


## 手动同步模块

直接通过 `sync` 命令马上同步一个模块, 只有  rednpm 客户端才有此功能:

```bash
$ rednpm sync [name]
```

或者使用 web 方式同步:

```bash
# eg. 同步 co模块 
$ open https://mirror.cqupt.edu.cn/npm/sync/co
```

## 相关链接

- [npmjs.org](https://npmjs.org/)
- [TaoNpm](https://npm.taobao.org/)
- [Ling.](https://zeroling.com)

## Contact
- Bug Report to i#zeroling.com
