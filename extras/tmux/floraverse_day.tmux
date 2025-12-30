# Floraverse colors for Tmux

set -g mode-style "fg=#368eb4,bg=#bcbac1"

set -g message-style "fg=#368eb4,bg=#bcbac1"
set -g message-command-style "fg=#368eb4,bg=#bcbac1"

set -g pane-border-style "fg=#bcbac1"
set -g pane-active-border-style "fg=#368eb4"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#368eb4,bg=#e6e4e6"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style "none"
set -g status-right-style "none"

set -g status-left "#[fg=#f4f3f6,bg=#368eb4,bold] #S #[fg=#368eb4,bg=#e6e4e6,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#bcbac1,bg=#e6e4e6] #{prefix_highlight} #[fg=#368eb4,bg=#bcbac1] %Y-%m-%d  %I:%M %p #[fg=#f4f3f6,bg=#368eb4,bold] #h "

setw -g window-status-activity-style "underscore,fg=#635638,bg=#e6e4e6"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=#635638,bg=#e6e4e6"
setw -g window-status-format "#[fg=#e6e4e6,bg=#e6e4e6,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#e6e4e6,bg=#e6e4e6,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#e6e4e6,bg=#bcbac1,nobold,nounderscore,noitalics]#[fg=#368eb4,bg=#bcbac1,bold] #I  #W #F #[fg=#bcbac1,bg=#e6e4e6,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#7f6020]#[bg=#e6e4e6]#[fg=#e6e4e6]#[bg=#7f6020]"
set -g @prefix_highlight_output_suffix ""
