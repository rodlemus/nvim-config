vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.keymap.set('n','<leader>w',':w<CR>',{noremap = true, silent = true})
vim.keymap.set('n','<leader>q',':wq<CR>',{noremap = true, silent = true})

vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
