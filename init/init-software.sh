#### 基于HomeBrew安装软件 ###

echo 'init-software start'


# 1. Oh-my-zsh
echo 'start to install Oh-my-zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'oh-my-zsh has installed'

# 2. Tmux
echo 'start to install Tmux...'
brew install tmux
# 根目录添加 .tmux.conf 软链
ln -s ~/dotfile/tmux ~/.tmux.conf
echo 'tmux has installed'

# 3. Bob translate
echo 'start to install Bob...'
brew install bob
echo 'bob has installed'

# 4. Trash-cli
echo 'start to install Trash-cli...'
brew install trash-cli
echo 'Trash-cli has installed'

echo 'init-software end'