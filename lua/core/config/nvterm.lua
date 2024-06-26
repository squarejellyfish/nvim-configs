local km = vim.keymap

km.set("n", "<leader>h", function()
	require("nvterm.terminal").new("horizontal")
end)

km.set("n", "<leader>v", function()
	require("nvterm.terminal").new("vertical")
end)

km.set("n", "<leader>rc", function() -- run C
	local current_path = vim.api.nvim_buf_get_name(0)
	local output_name = string.sub(current_path, 1, -3)
	local output = ""
	for word in string.gmatch(output_name, "([^/]+)") do
		output = word
	end
	local file_path = string.gsub(output_name, output, "", 1)
	local cmd = string.format("gcc %s -o %s -Wall", current_path, output_name)
	require("nvterm.terminal").send(cmd)
	require("nvterm.terminal").send(string.format("cd %s", file_path))
	require("nvterm.terminal").send(string.format("./%s", output))
end)
km.set("n", "<leader>jg", function() -- run judgegirl
	local current_path = vim.api.nvim_buf_get_name(0)
	local output_name = string.sub(current_path, 1, -3)
	local output = ""
	for word in string.gmatch(output_name, "([^/]+)") do
		output = word
	end
	local file_path = string.gsub(output_name, output, "", 1)
	local cmd = string.format("gcc %s -o %s -Wall -Wextra -O2 -std=c99", current_path, output_name)
	require("nvterm.terminal").send(cmd)
	require("nvterm.terminal").send(string.format("cd %s", file_path))
	require("nvterm.terminal").send(string.format("./%s", output))
end)

km.set("n", "<leader>cp", function() -- cpp
	local current_path = vim.api.nvim_buf_get_name(0)
	local output_name = current_path:sub(1, -5)
	local output = ""
	for word in string.gmatch(output_name, "([^/]+)") do
		output = word
	end
	local file_path = output_name:gsub(output, "", 1)
	local cmd = string.format("g++ %s -o %s -Wall -Wextra -std=c++20 -O2", current_path, output_name)
	require("nvterm.terminal").send(cmd)
	require("nvterm.terminal").send(string.format("cd %s", file_path))
	require("nvterm.terminal").send(string.format("./%s", output))
end)

km.set("n", "<leader>rp", function()
	local file_path = vim.api.nvim_buf_get_name(0)
	local output = ""
	for word in string.gmatch(file_path, "([^/]+)") do
		output = word
	end
	local path = string.gsub(file_path, output, "", 1)
	local cmd = string.format("python3 %s", file_path)
	require("nvterm.terminal").send(string.format("cd %s", path))
	require("nvterm.terminal").send(cmd)
end)

km.set("n", "<leader>sp", function()
	local file_path = vim.api.nvim_buf_get_name(0)
	local output = ""
	for word in string.gmatch(file_path, "([^/]+)") do
		output = word
	end
	local path = string.gsub(file_path, output, "", 1)
	local cmd = string.format("sudo python3 %s", file_path)
	require("nvterm.terminal").send(string.format("cd %s", path))
	require("nvterm.terminal").send(cmd)
end)

km.set("n", "<leader>cb", function()
	local curr_file = vim.api.nvim_buf_get_name(0)
	local filename = ""
	for word in string.gmatch(curr_file, "([^/]+)") do
		filename = word
	end
	local curr_path = string.gsub(curr_file, filename, "", 1)
	require("nvterm.terminal").send(string.format("cd %s", curr_path))
	require("nvterm.terminal").send("./build.sh")
end)
