#### 安装初始化软件 ###

echo 'started'

# 1. Homebrew
echo 'start to install Homebrew...'

echo 'installing xcode'
xcode-select --install
echo 'xcode has installed'

echo 'installing homebrew'
echo 'try to install homebrew'
/usr/bin/ruby -e "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install)"
echo 'update homebrew-core'
cd "$(brew --repo)/Library/Taps/"
mkdir homebrew && cd homebrew
git clone git://mirrors.ustc.edu.cn/homebrew-core.git
echo 'update homebrew-core'
git clone https://mirrors.ustc.edu.cn/homebrew-cask.git
/usr/bin/ruby -e "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install)"
brew update
echo 'homebrew has installed'

# 2. Git
echo 'start to install Git...'
brew install git
echo 'git has installed'

# 3. Tmux
echo 'start to install Tmux...'
brew install tmux
echo 'tmux has installed'

# 4. Oh-my-zsh
echo 'start to install Oh-my-zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'oh-my-zsh has installed'

# 根目录添加 .tmux.conf 软链
ln -s ~/docfile/tmux ~/.tmux.conf

# 5. Bob translate
echo 'start to install Bob...'
brew cask install bob
echo 'bob has installed'


