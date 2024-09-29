local km = vim.keymap
local trim_spaces = true

-- For opening terminals
km.set("n", "<leader>h", "<cmd>ToggleTerm direction=horizontal<CR>")
km.set("n", "<leader>v", "<cmd>ToggleTerm direction=vertical<CR>")
km.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>")

-- General keymaps
km.set('t', 'jk', [[<C-\><C-n>]])
km.set('t', '<esc>', [[<C-\><C-n>]])
km.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
km.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
km.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
km.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

-- Toggleterm
km.set({"n", "t"}, "<leader>\\", "<esc><cmd>ToggleTermToggleAll<CR>")

-- Sending commands to terminals
vim.keymap.set("v", "<space>sp", function() -- send selected python code to terminal, assume ipython is opened
    require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, { args = vim.v.count })
end)

vim.keymap.set("v", "<space>s", function()
    require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
end)

km.set("n", "<leader>rc", function() -- run C
	local current_dir = vim.fn.expand('%:p:h')
    local file_name = vim.fn.expand('%:p')
    local output_name = vim.fn.expand('%:t:r')
	local cmd = string.format("gcc %s -o %s -Wall", file_name, output_name)
	require("toggleterm").exec(cmd)
	require("toggleterm").exec(string.format("cd %s", current_dir))
	require("toggleterm").exec(string.format("./%s", output_name))
end)

km.set("n", "<leader>rp", function() -- run python
	local current_dir = vim.fn.expand('%:p:h')
    local file_name = vim.fn.expand('%:p')
	local cmd = string.format("python3 %s", file_name)
	require("toggleterm").exec(string.format("cd %s", current_dir))
	require("toggleterm").exec(cmd)
end)



