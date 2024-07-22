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
km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")
km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")
km.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Visual mode
km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")

-- terminal mode
km.set("t", "jk", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true))

-- x mode ?

vim.api.nvim_set_keymap("x", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("x", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
km.set("x", "<leader>p", "\"_dP")

-- some buffer shits
km.set("n", "<leader>x", ":bd<CR>")
