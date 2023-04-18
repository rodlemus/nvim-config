vim.keymap.set('n','<leader>w',':w<CR>',{noremap = true, silent = true})
vim.keymap.set('n','<leader>q',':wq<CR>',{noremap = true, silent = true})
vim.keymap.set('n','<leader>qq',':q<CR>',{noremap = true, silent = true})

vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
