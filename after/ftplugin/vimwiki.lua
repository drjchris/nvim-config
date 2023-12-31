
-- set spelling
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_gb"

-- set hard wrap
vim.o.textwidth = 77

-- columnthing
-- vim.o.colorcolumn = "78"

-- sort out the tab
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true



-- key bindings just for text
vim.keymap.set("n", "<leader>t", "<CMD><CR>", {desc="text"})
vim.keymap.set("n", "<leader>tp", "<CMD><CR>", {desc="paragraph"})
vim.keymap.set("n", "<leader>tpw", "<CMD>norm gqap<CR>", {desc="wrap"})
vim.keymap.set("n", "<leader>tdw", "<CMD>% norm gqap<CR>", {desc="wrap document"})
vim.keymap.set("n", "<leader>tpu", "<CMD>norm vipJ<CR>", {desc="unwrap"})
vim.keymap.set("n", "<leader>tdu", "<CMD>% norm vipJ<CR>", {desc="unwrap"})
vim.keymap.set("n", "<leader>tps", "<CMD>s/\\. /\\.\\r\\t/g<CR>", {desc="split"})


vim.cmd [[ let g:vimwiki_list = [{'path': '~/vimwiki/', 'auto_toc':1 }] ]]
