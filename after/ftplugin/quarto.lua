-- all the settings specific to quarto
print("[i] qmd ft file loaded")

-- sort out the tab
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

-- set spelling
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_gb"

-- setup hard wrap
--vim.opt_local.textwidth = 70
--vim.keymap.set("n", "<leader>tw", "<CMD>norm gqap<CR>", {})

vim.cmd("nnoremap <leader>tw :norm gqap <CR>")
vim.cmd("nnoremap <leader>ts :SplitText <CR>")
vim.cmd("nnoremap <leader>bib :Telescope bibtex <CR>")
vim.cmd("set foldmethod=marker")
