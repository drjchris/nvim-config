-- EDITOR CONFIGS

-- Fix tabs to 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- set number column
vim.cmd("set number")
vim.cmd("set numberwidth=4")

-- set no fucking wrap
vim.cmd("set nowrap")

-- color theme
-- changes depending on which terminal is being used
-- get the name of the terminal
local term = os.getenv("TERM")
if term == "xterm" then
	vim.cmd("colorscheme desert")
else
	vim.cmd("colorscheme tokyonight-night")
end

-- keeps sign column constant
vim.cmd("set signcolumn=yes")

-- saves to clipboard
vim.cmd("set clipboard=unnamedplus")

-- correct the highlight thing
vim.cmd("set nohlsearch")
vim.cmd("set incsearch")

-- my own script to unwrap text
vim.api.nvim_create_user_command("SplitText", function()
	vim.api.nvim_exec("norm vipJ0", false)
	vim.api.nvim_exec("s/\\. /\\.\\r\\t/g", false)
end, {})

vim.api.nvim_create_user_command("CompilePdf", function()
	vim.api.nvim_exec('silent !CompilePdf % || echo "ERROR: did not compile"', false)
end, {})
