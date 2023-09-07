-- all the settings specific to quarto

-- sort out the tab
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

-- set spelling
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_gb"

-- do manual folding
vim.o.foldmethod = "marker"
vim.o.foldmarker = "<<<,>>>"
