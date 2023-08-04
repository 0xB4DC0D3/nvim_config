local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set('n', "<leader>o", "<cmd> Neotree focus <CR>", { silent = true })
keymap.set('n', "<leader>e", "<cmd> Neotree toggle <CR>", { silent = true })

-- No highlight
keymap.set('n', "<leader>z", "<cmd> nohl <CR>")

-- Increment/decrement
keymap.set('n', "+", "<C-a>", { silent = true })
keymap.set('n', "-", "<C-x>", { silent = true })

-- Don't yank with 'x'
keymap.set('n', 'x', '"_x', { silent = true })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G', { silent = true })

-- New tab
keymap.set('n', 'te', '<cmd>tabedit<CR>', { silent = true })
keymap.set('n', 'ss', '<cmd>split<CR>', { silent = true })
keymap.set('n', 'sv', '<cmd>vsplit<CR>', { silent = true })

-- Move window
keymap.set('', '<leader>h', '<C-w>h', { silent = true })
keymap.set('', '<leader>j', '<C-w>j', { silent = true })
keymap.set('', '<leader>k', '<C-w>k', { silent = true })
keymap.set('', '<leader>l', '<C-w>l', { silent = true })

-- Save file
keymap.set('', '<C-s>', '<cmd>w<CR>', { silent = true })

-- Open command-line
keymap.set('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })

-- Tabs keymapping
keymap.set('n', ',', '<cmd>BufferPrevious<CR>', { noremap = true, silent = true })
keymap.set('n', '.', '<cmd>BufferNext<CR>', { noremap = true, silent = true })

keymap.set('n', '<', '<cmd>BufferMovePrevious<CR>', { noremap = true, silent = true })
keymap.set('n', '>', '<cmd>BufferMoveNext<CR>', { noremap = true, silent = true })

keymap.set('n', '<C-c>', '<cmd>BufferClose<CR>', { noremap = true, silent = true })
