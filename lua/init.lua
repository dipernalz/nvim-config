vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.expandtab = true
vim.opt.number = true

-- color scheme
vim.opt.termguicolors = true
vim.cmd("colorscheme dracula")

-- keymaps
vim.keymap.set("n", "<A-h>", "<C-w><Left>")
vim.keymap.set("n", "<A-l>", "<C-w><Right>")
vim.keymap.set("n", "<A-k>", "<C-w><Up>")
vim.keymap.set("n", "<A-j>", "<C-w><Down>")
vim.keymap.set("n", "<A-F>", ":Format<CR>")
-- vim.keymap.set("n", "<A-C>", "gcc")

require("plugins")
