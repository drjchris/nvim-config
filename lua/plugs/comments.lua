require('Comment').setup({
    toggler = {
        ---Line-comment toggle keymap
        line = '/cl',
        ---Block-comment toggle keymap
        block = '/cm',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'cl',
        ---Block-comment keymap
        block = 'gb',
    },
})
