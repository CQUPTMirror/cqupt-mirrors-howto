Homebrew/Linuxbrew 镜像使用帮助
注:该镜像是 Homebrew/Linuxbrew 的 formula 索引的镜像（即 brew update 时所更新内容）。

# 首次安装 Homebrew

官网上提供的安装脚本是 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" ，为了加速克隆的速度，你需要下载 https://raw.githubusercontent.com/Homebrew/install/master/install.sh 并编辑其中的：

`BREW_REPO="https://github.com/Homebrew/brew"`

`变成：`

`BREW_REPO="https://mirrors.cqupt.edu.cn/homebrew/brew.git"`

接着，运行 install.sh 以安装 Homebrew：

`HOMEBREW_CORE_GIT_REMOTE=https://mirrors.cqupt.edu.cn/homebrew/homebrew-core.git bash install.sh`

这样在首次安装的时候也可以使用镜像。

# 替换现有上游

`brew 程序本身，Homebrew/Linuxbrew 相同`

`git -C "$(brew --repo)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/brew.git`

`以下针对 mac OS 系统上的 Homebrew`

`git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/homebrew-core.git`

`git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/homebrew-cask.git`

`git -C "$(brew --repo homebrew/cask-fonts)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/homebrew-cask-fonts.git`

`git -C "$(brew --repo homebrew/cask-drivers)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/homebrew-cask-drivers.git`

`以下针对 Linux 系统上的 Linuxbrew`

`git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.cqupt.edu.cn/homebrew/linuxbrew-core.git`

`更换后测试工作是否正常`

`brew update`

# 复原

(感谢Snowonion Lee提供说明)

`brew 程序本身，Homebrew/Linuxbrew 相同`

`git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git`

`以下针对 mac OS 系统上的 Homebrew`

`git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/homebrew-core.git`

`git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com/Homebrew/homebrew-cask.git`

`git -C "$(brew --repo homebrew/cask-fonts)" remote set-url origin https://github.com/Homebrew/homebrew-cask-fonts.git`

`git -C "$(brew --repo homebrew/cask-drivers)" remote set-url origin https://github.com/Homebrew/homebrew-cask-drivers.git`

`以下针对 Linux 系统上的 Linuxbrew`

`git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/linuxbrew-core.git`

`更换后测试工作是否正常`

`brew update`
