local opt = vim.opt
local g = vim.g

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false
opt.relativenumber = true
opt.scrolloff = 8

opt.termguicolors = true

opt.whichwrap:append "<>[]hl"

g.mapleader = " "

local km = vim.keymap
-- insert mode shits
km.set("i", "jk", "<Esc>")
km.set("i", "<C-h>", "<Left>")
km.set("i", "<C-l>", "<Right>")
km.set("i", "<C-j>", "<Down>")
km.set("i", "<C-k>", "<Up>")

-- normal mode shits
km.set("n", "<Esc>", ":noh<CR>")
-- km.set("n", "<C-h>", "<C-w>h")
-- km.set("n", "<C-l>", "<C-w>l")
-- km.set("n", "<C-j>", "<C-w>j")
-- km.set("n", "<C-k>", "<C-w>k")
km.set("n", "<C-s>", "<cmd> w <CR>")
km.set("n", "<C-c>",  "<cmd> %y+ <CR>")
km.set("n", "<leader>p", "_dP")
    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- terminal mode
km.set("t", "jk", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true))

-- x mode ?

vim.api.nvim_set_keymap("x", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("x", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- some buffer shits
km.set("n", "<leader>x", ":bd<CR>")
