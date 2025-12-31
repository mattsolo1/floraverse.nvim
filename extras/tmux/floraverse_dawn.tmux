# Floraverse colors for Tmux

set -g mode-style "fg=#5290ba,bg=#b0adbf"

set -g message-style "fg=#5290ba,bg=#b0adbf"
set -g message-command-style "fg=#5290ba,bg=#b0adbf"

set -g pane-border-style "fg=#b0adbf"
set -g pane-active-border-style "fg=#5290ba"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#5290ba,bg=#ebeae9"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style "none"
set -g status-right-style "none"

set -g status-left "#[fg=#f8f8f9,bg=#5290ba,bold] #S #[fg=#5290ba,bg=#ebeae9,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#ebeae9,bg=#ebeae9,nobold,nounderscore,noitalics]#[fg=#5290ba,bg=#ebeae9] #{prefix_highlight} #[fg=#b0adbf,bg=#ebeae9,nobold,nounderscore,noitalics]#[fg=#5290ba,bg=#b0adbf] %Y-%m-%d  %I:%M %p #[fg=#5290ba,bg=#b0adbf,nobold,nounderscore,noitalics]#[fg=#f8f8f9,bg=#5290ba,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#ebeae9,bg=#ebeae9,nobold,nounderscore,noitalics]#[fg=#5290ba,bg=#ebeae9] #{prefix_highlight} #[fg=#b0adbf,bg=#ebeae9,nobold,nounderscore,noitalics]#[fg=#5290ba,bg=#b0adbf] %Y-%m-%d  %H:%M #[fg=#5290ba,bg=#b0adbf,nobold,nounderscore,noitalics]#[fg=#f8f8f9,bg=#5290ba,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#7d7868,bg=#ebeae9"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=#7d7868,bg=#ebeae9"
setw -g window-status-format "#[fg=#ebeae9,bg=#ebeae9,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#ebeae9,bg=#ebeae9,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#ebeae9,bg=#b0adbf,nobold,nounderscore,noitalics]#[fg=#5290ba,bg=#b0adbf,bold] #I  #W #F #[fg=#b0adbf,bg=#ebeae9,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#9a7141]#[bg=#ebeae9]#[fg=#ebeae9]#[bg=#9a7141]"
set -g @prefix_highlight_output_suffix ""
