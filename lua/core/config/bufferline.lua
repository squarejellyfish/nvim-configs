vim.opt.termguicolors = true
require("bufferline").setup({})

local km = vim.keymap
km.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
km.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")

