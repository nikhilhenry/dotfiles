local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

vim.keymap.set('n', 'ft',vim.cmd.Ex)
vim.keymap.set('n', '<C-d>','<C-d>zz')
vim.keymap.set('n', '<C-u>','<C-u>zz')

local hp_marks = require('harpoon.mark')
local hp_ui = require('harpoon.ui')
vim.keymap.set('n','<leader>a',hp_marks.add_file)
vim.keymap.set('n','<leader>m',hp_ui.toggle_quick_menu)
vim.keymap.set('n','<leader>l',hp_ui.nav_next)
vim.keymap.set('n','<leader>h',hp_ui.nav_prev)
