local map = vim.keymap.set

-- tabulation
map("v", "<", "<gv", { desc = "Indent out and keeps the selection" })
map("v", ">", ">gv", { desc = "Indent in and keeps the selection" })

map('n','<leader>w',':w<CR>',{noremap = true, silent = true})
map('n','<leader>q',':q<CR>',{noremap = true, silent = true})

--COPY AND PASTE TEXT
map({'n', 'x'}, 'cp', '"+y')
map({'n', 'x'}, 'cv', '"+p')
-- SELECT ALL TEXT
map('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- TELESCOPE
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')

