-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- file finder and explorer shortcuts
vim.keymap.set('n', '<leader>f', '<CMD><CR>', {desc="File"})
vim.keymap.set("n", "<leader>fe", "<CMD>Ex<CR>", { desc="File Explorer"})
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {desc = "File Finder"})
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {desc = "File Grep"})

-- Navigate between TMUX splits
-- Other stuff needs to be installed, for it to work
vim.keymap.set({'n', 't'}, '<C-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<C-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<C-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<C-j>', '<CMD>NavigatorDown<CR>')
vim.keymap.set({'n', 't'}, '<C-p>', '<CMD>NavigatorPrevious<CR>')

-- ALL THE CODE STUFF
vim.keymap.set('n', '<leader>c', '<CMD><CR>', {desc="Code"})
vim.keymap.set('n', '<leader>ct', '<CMD>TodoLocList<CR>', {desc="Todo List"})

-- ALL THE BUFFER STUFF
vim.keymap.set('n', '<leader>b', '<CMD><CR>', {desc="Buffer"})
vim.keymap.set('n', '<leader>bp', '<CMD>b#<CR>', {desc="Previous"})
vim.keymap.set('n', '<leader>bm', '<CMD>messages<CR>', {desc="Messages"})
vim.keymap.set('n', '<leader>bb', '<CMD>Telescope buffers<CR>', {desc="List buffers"})
vim.keymap.set('n', '<leader>bX', '<CMD>b#<bar>bd#<CR>', {desc="Kill buffer"})
vim.keymap.set('n', '<leader>bn', '<CMD><CR>', {desc="New"})
vim.keymap.set('n', '<leader>bnr', '<CMD>vsp<bar>Ex<CR>', {desc="Right"})
vim.keymap.set('n', '<leader>bnb', '<CMD>sp| Ex<CR>', {desc="Bottom"})

-- open a new terminal
vim.keymap.set('n', '<leader>bt', '<CMD><CR>', {desc="Terminal"})
vim.keymap.set('n', '<leader>btn', '<CMD>set nu!<bar>set rnu!<bar>term<CR>', {desc="Open here"})
vim.keymap.set('n', '<leader>btr', '<CMD>vsplit<bar>set nu!<bar>set rnu!<bar>term<CR>', {desc="Right"})
vim.keymap.set('n', '<leader>btb', '<CMD>split<bar>set nu!<bar>set rnu!<bar>term<CR>', {desc="Bottom"})


-- VIMWIKI
vim.keymap.set('n', '<leader>vw', '<CMD><CR>', {desc="vimWiki"})
vim.keymap.set('n', '<leader>vww', '<CMD>VimwikiIndex<CR>', {desc="Index"})
vim.keymap.set('n', '<leader>vwd', '<CMD>VimwikiDiaryIndex<CR>', {desc="Diary Index"})
vim.keymap.set('n', '<leader>vwn', '<CMD>VimwikiMakeDiaryNote<CR>', {desc="Diary Note"})


vim.keymap.set({'n'}, '<leader>§', '<CMD>Startup display<CR>', {desc="Go to Start page"})
