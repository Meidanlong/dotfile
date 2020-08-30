#### Tmux 配置 ####

# 更改前置键
#unbind C-b
#set -g prefix C-z
#bind-key C-z send-prefix

# 分屏
bind = split-window -h
bind - split-window -v
unbind '"'
unbind %

# 使用小键盘选择窗口
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# r 刷新配置
bind r source-file ~/.tmux.conf \; display-message "Config reloaded.."

# 开启鼠标的支持
set-option -g mouse on
# set-window-option -g mode-mouse on
# 兼容vim操作方式
setw -g mode-keys vi

# 使用zsh环境
set-option -g default-shell /bin/zsh

# 显色样式
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",xterm-256color:Tc"
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
#run '~/.tmux/plugins/tpm/tpm'

set -g set-titles on
# set-option -g set-titles-string '#{pane_current_path} | #{pane_title}'
set-option -g set-titles-string '#{pane_title}'

set -g status-position bottom
set -g xterm-keys on
set -g status-style fg="#666666",bg=default
setw -g window-status-style fg="#666666",bg=default,default
setw -g window-status-current-style fg=red,bg=default
set -g message-style fg=white,bg=black,bright
set -g status-left " "
set -g status-justify left
setw -g window-status-format         ' #I. #W '
setw -g window-status-current-format ' #(echo "#{pane_current_command}") '
set -g status-right " #[fg=#666666] %m-%d %H:%M "
set -g pane-border-style fg="#222425"
set -g pane-active-border-style fg=red,bg=default
