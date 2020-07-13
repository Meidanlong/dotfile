# 更改前置键
unbind C-b
set -g prefix C-z
bind-key C-z send-prefix


#tmux attach 如果无分离终端则新建
new-session


# 分屏
bind = split-window -h
bind - split-window -v
unbind ' " '
unbind %


# 使用小键盘选择窗口
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


# r 刷新配置
bind r source-file ~/.tmux.conf; display-message "Config reloaded.."


# 使用鼠标切换窗口
set-option -g mouse-select-pane on
