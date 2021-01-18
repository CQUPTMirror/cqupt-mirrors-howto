```
Homebrew-bottles 镜像使用帮助
注:该镜像是 Homebrew 二进制预编译包的镜像。本镜像站同时提供 Homebrew 的 formula 索引的镜像（即 brew update 时所更新内容），请参考 Homebrew 镜像使用帮助。

临时替换
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cqupt.edu.cn/homebrew-bottles
长期替换
如果你使用 bash:

echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cqupt.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
如果你使用 zsh:

echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cqupt.edu.cn/homebrew-bottles' >> ~/.zprofile
source ~/.zprofilexxxxxxxxxx # brew 程序本身，Homebrew/Linuxbrew 相同git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git# 以下针对 macOS 系统上的 HomebrewBREW_TAPS="$(brew tap)"for tap in core cask{,-fonts,-drivers,-versions}; do    if echo "$BREW_TAPS" | grep -qE "^homebrew/${tap}\$"; then        git -C "$(brew --repo homebrew/${tap})" remote set-url origin https://github.com/Homebrew/homebrew-${tap}.git    fidone# 以下针对 Linux 系统上的 Linuxbrewgit -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/linuxbrew-core.git# 重新设置 git 仓库 HEADbrew update-reset
```

