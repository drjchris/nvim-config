-- this is no italics
require("kanagawa").setup({
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none"
        }
      }
    }
  }
})


vim.o.termguicolors = true
vim.cmd("colorscheme kanagawa")
