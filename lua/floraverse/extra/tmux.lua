local util = require("floraverse.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
# Floraverse colors for Tmux

set -g mode-style "fg=${blue},bg=${fg_gutter}"

set -g message-style "fg=${blue},bg=${fg_gutter}"
set -g message-command-style "fg=${blue},bg=${fg_gutter}"

set -g pane-border-style "fg=${fg_gutter}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${blue},bg=${bg_dark}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style "none"
set -g status-right-style "none"

set -g status-left "#[fg=${bg},bg=${blue},bold] #S #[fg=${blue},bg=${bg_dark},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${fg_gutter},bg=${bg_dark}] #{prefix_highlight} #[fg=${blue},bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=${bg},bg=${blue},bold] #h "

setw -g window-status-activity-style "underscore,fg=${fg_dark},bg=${bg_dark}"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=${fg_dark},bg=${bg_dark}"
setw -g window-status-format "#[fg=${bg_dark},bg=${bg_dark},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg_dark},bg=${bg_dark},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg_dark},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${blue},bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=${bg_dark},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=${yellow}]#[bg=${bg_dark}]#[fg=${bg_dark}]#[bg=${yellow}]"
set -g @prefix_highlight_output_suffix ""
]],
    colors
  )
  return tmux
end

return M
