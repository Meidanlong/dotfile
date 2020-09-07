# 找到对应路径
cd /Users/meidanlong/Library/Application\ Support/Sublime\ Text\ 3/

# 打包Packages目录 和 Installed Packages目录
zip -r -q Packages.zip ./Packages
zip -r -q Installed\ Packages.zip ./Installed\ Packages

# 备份到 ~/docfile/sublime-settings 目录
mv ./Packages.zip ~/docfile/sublime-settings/Packages.zip
mv ./Installed\ Packages.zip ~/docfile/sublime-settings/Installed\ Packages.zip
