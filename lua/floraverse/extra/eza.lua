local util = require("floraverse.util")

local M = {}

function M.generate(colors)
  local eza = util.template(
    [[
colourful: true

filekinds:
  normal: { foreground: "${fg}" }
  directory: { foreground: "${blue}" }
  symlink: { foreground: "${cyan}" }
  pipe: { foreground: "${terminal.black_bright}" }
  block_device: { foreground: "${yellow}" }
  char_device: { foreground: "${yellow}" }
  socket: { foreground: "${terminal.black_bright}" }
  special: { foreground: "${purple}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${cyan}" }

perms:
  user_read: { foreground: "${cyan}" }
  user_write: { foreground: "${magenta}" }
  user_execute_file: { foreground: "${green}" }
  user_execute_other: { foreground: "${green}" }
  group_read: { foreground: "${cyan}" }
  group_write: { foreground: "${orange}" }
  group_execute: { foreground: "${green}" }
  other_read: { foreground: "${cyan}" }
  other_write: { foreground: "${magenta}" }
  other_execute: { foreground: "${green}" }
  special_user_file: { foreground: "${magenta}" }
  special_other: { foreground: "${red}" }
  attribute: { foreground: "${fg_dark}" }

size:
  major: { foreground: "${cyan}" }
  minor: { foreground: "${purple}" }
  number_byte: { foreground: "${fg_dark}" }
  number_kilo: { foreground: "${blue}" }
  number_mega: { foreground: "${cyan}" }
  number_giga: { foreground: "${orange}" }
  number_huge: { foreground: "${magenta}" }
  unit_byte: { foreground: "${fg_dark}" }
  unit_kilo: { foreground: "${blue}" }
  unit_mega: { foreground: "${cyan}" }
  unit_giga: { foreground: "${orange}" }
  unit_huge: { foreground: "${magenta}" }

users:
  user_you: { foreground: "${blue}" }
  user_root: { foreground: "${magenta}" }
  user_other: { foreground: "${cyan}" }
  group_yours: { foreground: "${blue}" }
  group_root: { foreground: "${magenta}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${blue}" }
  multi_link_file: { foreground: "${cyan}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${magenta}" }
  deleted: { foreground: "${red}" }
  renamed: { foreground: "${cyan}" }
  typechange: { foreground: "${cyan}" }
  ignored: { foreground: "${comment}" }
  conflicted: { foreground: "${orange}" }

git_repo:
  branch_main: { foreground: "${fg_dark}" }
  branch_other: { foreground: "${cyan}" }
  git_clean: { foreground: "${bg_highlight}" }
  git_dirty: { foreground: "${magenta}" }

punctuation: { foreground: "${bg_highlight}" }
date: { foreground: "${yellow}" }
inode: { foreground: "${fg_dark}" }
blocks: { foreground: "${fg_dark}" }
header: { foreground: "${fg_dark}" }
octal: { foreground: "${orange}" }
flags: { foreground: "${purple}" }

symlink_path: { foreground: "${blue}" }
control_char: { foreground: "${orange}" }
broken_symlink: { foreground: "${red}" }
broken_path_overlay: { foreground: "${red}" }]],
    colors
  )

  return eza
end

return M
