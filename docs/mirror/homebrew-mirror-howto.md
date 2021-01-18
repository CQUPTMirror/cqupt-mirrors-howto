## Homebrew/Linuxbrew 镜像使用帮助

**注：该镜像是 Homebrew/Linuxbrew 源程序以及 formula/cask 索引的镜像（即 `brew update` 时所更新内容）。本镜像站同时提供相应的二进制预编译包的镜像，请参考 [Homebrew bottles 镜像使用帮助](https://mirrors.cqupt.edu.cn/help/homebrew-bottles/) 和 [Linuxbrew bottles 镜像使用帮助](https://mirrors.cqupt.edu.cn/help/linuxbrew-bottles/)。**

### 首次安装 Homebrew / Linuxbrew

首先，需要确保系统中安装了 git 和 curl。其中 macOS 系统自带，而 Linux 用户安装 git 即可（curl 为 git 的依赖项会自动安装）。

接着，在终端输入以下两行命令设置环境变量：

```
# macOS 用户，请使用以下两句命令
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.cqupt.edu.cn/homebrew-bottles"
# Linux 用户，请使用以下两句命令
# export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.cqupt.edu.cn/git/homebrew/linuxbrew-core.git"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.cqupt.edu.cn/linuxbrew-bottles"
```

最后，在终端运行以下命令以安装 Homebrew/Linuxbrew：

```
# 从本镜像下载安装脚本，修改其中的仓库源并安装 Homebrew/Linuxbrew
git clone --depth=1 https://mirrors.cqupt.edu.cn/git/homebrew/install.git brew-install
/bin/bash -c "$(sed 's|^BREW_REPO=.*$|BREW_REPO="https://mirrors.cqupt.edu.cn/git/homebrew/brew.git"|g' brew-install/install.sh)"
rm -rf brew-install

# 也可从 GitHub 获取官方安装脚本，修改其中的仓库源，运行以安装 Homebrew/Linuxbrew
/bin/bash -c "$(
    curl -fsSL https://github.com/Homebrew/install/raw/master/install.sh |
    sed 's|^BREW_REPO=.*$|BREW_REPO="https://mirrors.cqupt.edu.cn/git/homebrew/brew.git"|g'
)"
```

这样在首次安装的时候也可以使用镜像。

** Linux 用户需要注意，安装 Linuxbrew 后请将相关路径加入自己的环境变量中：*

```
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
test -r ~/.profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile
test -r ~/.zshrc && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.zshrc
```

*参考了 https://docs.brew.sh/Homebrew-on-Linux。*

### 替换现有仓库上游

替换 brew 程序本身的源，Homebrew/Linuxbrew 相同：

```
git -C "$(brew --repo)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/brew.git
```

以下针对 macOS 系统上的 Homebrew

```
# 手动设置
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-core.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-cask.git
git -C "$(brew --repo homebrew/cask-fonts)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-cask-fonts.git
git -C "$(brew --repo homebrew/cask-drivers)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-cask-drivers.git
git -C "$(brew --repo homebrew/cask-versions)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-cask-versions.git

# 或使用下面的几行命令自动设置
BREW_TAPS="$(brew tap)"
for tap in core cask{,-fonts,-drivers,-versions}; do
    if echo "$BREW_TAPS" | grep -qE "^homebrew/${tap}\$"; then
        # 将已有 tap 的上游设置为本镜像并设置 auto update
        # 注：原 auto update 只针对托管在 GitHub 上的上游有效
        git -C "$(brew --repo homebrew/${tap})" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-${tap}.git
        git -C "$(brew --repo homebrew/${tap})" config homebrew.forceautoupdate true
    else   # 在 tap 缺失时自动安装（如不需要请删除此行和下面一行）
        brew tap --force-auto-update homebrew/${tap} https://mirrors.cqupt.edu.cn/git/homebrew/homebrew-${tap}.git
    fi
done
```

以下针对 Linux 系统上的 Linuxbrew：

```
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.cqupt.edu.cn/git/homebrew/linuxbrew-core.git
```

更换上游后需重新设置 git 仓库 HEAD：

```
brew update-reset
```

### 复原仓库上游

*(感谢 Snowonion Lee 提供说明)*

```
# brew 程序本身，Homebrew/Linuxbrew 相同
git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git

# 以下针对 macOS 系统上的 Homebrew
BREW_TAPS="$(brew tap)"
for tap in core cask{,-fonts,-drivers,-versions}; do
    if echo "$BREW_TAPS" | grep -qE "^homebrew/${tap}\$"; then
        git -C "$(brew --repo homebrew/${tap})" remote set-url origin https://github.com/Homebrew/homebrew-${tap}.git
    fi
done

# 以下针对 Linux 系统上的 Linuxbrew
git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/linuxbrew-core.git

# 重新设置 git 仓库 HEAD
brew update-reset
```
