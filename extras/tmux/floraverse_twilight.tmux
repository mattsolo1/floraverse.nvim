# Floraverse colors for Tmux

set -g mode-style "fg=#589ac7,bg=#444059"

set -g message-style "fg=#589ac7,bg=#444059"
set -g message-command-style "fg=#589ac7,bg=#444059"

set -g pane-border-style "fg=#444059"
set -g pane-active-border-style "fg=#589ac7"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#589ac7,bg=#0a0810"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style "none"
set -g status-right-style "none"

set -g status-left "#[fg=#0f0d18,bg=#589ac7,bold] #S #[fg=#589ac7,bg=#0a0810,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#444059,bg=#0a0810] #{prefix_highlight} #[fg=#589ac7,bg=#444059] %Y-%m-%d  %I:%M %p #[fg=#0f0d18,bg=#589ac7,bold] #h "

setw -g window-status-activity-style "underscore,fg=#b4ad97,bg=#0a0810"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=#b4ad97,bg=#0a0810"
setw -g window-status-format "#[fg=#0a0810,bg=#0a0810,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#0a0810,bg=#0a0810,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#0a0810,bg=#444059,nobold,nounderscore,noitalics]#[fg=#589ac7,bg=#444059,bold] #I  #W #F #[fg=#444059,bg=#0a0810,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#d9a15f]#[bg=#0a0810]#[fg=#0a0810]#[bg=#d9a15f]"
set -g @prefix_highlight_output_suffix ""
