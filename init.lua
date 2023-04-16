
require('basic')
require('plugins')
require('autocmd')
require('keymap')

--vim.api.nvim_set_keymap("n", ";", ":",{})
--vim.opt.termguicolors = true
vim.api.nvim_set_keymap("i","<C-y>","<ESC>:NvimTreeOpen<CR>",{})
vim.api.nvim_set_keymap("n","<C-y>",":NvimTreeOpen<CR>",{})
vim.api.nvim_set_keymap("n","<C-]>",":w<CR>:!time python %<CR>",{})

require('onedark').setup {
    style = 'darker',
    transparent = true
}
require('onedark').load()
