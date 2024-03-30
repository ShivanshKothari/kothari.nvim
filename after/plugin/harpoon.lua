local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)


vim.keymap.set("n", "<C-s>", ui.nav_file(1))
vim.keymap.set("n", "<C-t>", ui.nav_file(1))
vim.keymap.set("n", "<C-n>", ui.nav_file(1))
vim.keymap.set("n", "<C-k>", ui.nav_file(1))
