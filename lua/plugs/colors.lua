-- this is no italics
require("kanagawa").setup({
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none",
          bg_p2 = "#16161D"
        }
      }
    }
  }
})


vim.o.termguicolors = true
vim.cmd("colorscheme kanagawa")
