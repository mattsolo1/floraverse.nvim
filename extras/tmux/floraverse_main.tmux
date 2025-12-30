# Floraverse colors for Tmux

set -g mode-style "fg=#40a4cf,bg=#3a3842"

set -g message-style "fg=#40a4cf,bg=#3a3842"
set -g message-command-style "fg=#40a4cf,bg=#3a3842"

set -g pane-border-style "fg=#3a3842"
set -g pane-active-border-style "fg=#40a4cf"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#40a4cf,bg=#08002e"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style "none"
set -g status-right-style "none"

set -g status-left "#[fg=#0e0d15,bg=#40a4cf,bold] #S #[fg=#40a4cf,bg=#08002e,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#08002e,bg=#08002e,nobold,nounderscore,noitalics]#[fg=#40a4cf,bg=#08002e] #{prefix_highlight} #[fg=#3a3842,bg=#08002e,nobold,nounderscore,noitalics]#[fg=#40a4cf,bg=#3a3842] %Y-%m-%d  %I:%M %p #[fg=#40a4cf,bg=#3a3842,nobold,nounderscore,noitalics]#[fg=#0e0d15,bg=#40a4cf,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#08002e,bg=#08002e,nobold,nounderscore,noitalics]#[fg=#40a4cf,bg=#08002e] #{prefix_highlight} #[fg=#3a3842,bg=#08002e,nobold,nounderscore,noitalics]#[fg=#40a4cf,bg=#3a3842] %Y-%m-%d  %H:%M #[fg=#40a4cf,bg=#3a3842,nobold,nounderscore,noitalics]#[fg=#0e0d15,bg=#40a4cf,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#f3e0b8,bg=#08002e"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=#f3e0b8,bg=#08002e"
setw -g window-status-format "#[fg=#08002e,bg=#08002e,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#08002e,bg=#08002e,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#08002e,bg=#3a3842,nobold,nounderscore,noitalics]#[fg=#40a4cf,bg=#3a3842,bold] #I  #W #F #[fg=#3a3842,bg=#08002e,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#fac357]#[bg=#08002e]#[fg=#08002e]#[bg=#fac357]"
set -g @prefix_highlight_output_suffix ""
