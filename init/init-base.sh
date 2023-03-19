#### 安装基础软件 ###

echo 'init-base start'


# 1. xcode
echo 'start to install  xcode'
xcode-select --install
echo 'xcode has installed'

# 2. Homebrew
echo 'start to install Homebrew...'
echo 'try to install homebrew'
/bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
echo 'homebrew has installed'

# 3. Git
echo 'start to install Git...'
brew install git
echo 'git has installed'

# 4. update homebrew
echo 'update homebrew-core'
cd "$(brew --repo)/Library/Taps/"
mkdir homebrew && cd homebrew
git clone git://mirrors.ustc.edu.cn/homebrew-core.git
echo 'update homebrew-cask'
git clone https://mirrors.ustc.edu.cn/homebrew-cask.git
brew update
echo 'homebrew has updated'


echo 'init-base end'

