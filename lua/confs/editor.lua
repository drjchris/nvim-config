vim.striptencoding = "utf-8"

-- set syntax
vim.o.syntax = true

-- get rid of wrapping
vim.o.wrap = false

-- enable side scrolling
vim.o.sidescroll = 1

-- smart indent
vim.o.smartindent = true

-- number column on left
vim.o.nu = true
-- vim.o.relativenumber = true

-- sort out the tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- keep sign column consistent
vim.o.signcolumn = "yes"

-- highlight cursor line
vim.o.cursorline = true

vim.o.clipboard = "unnamed"


-- highlight search off and incremental search
vim.o.hlsearch = false
vim.o.incsearch = true

-- set where the splits open
vim.o.splitright = true
vim.o.splitbelow = true

-- set the colors
vim.o.termguicolors = true
-- vim.cmd("colorscheme slate")

-- scroll at the bottom
vim.o.scrolloff = 8

vim.o.noncompatible = true
