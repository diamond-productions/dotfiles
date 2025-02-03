-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

 

-------------
---addons---
-------------

-- Nvim Tree

vim.keymap.set('n','<leader>e' , ':NvimTreeToggle<cr>' , opts)

-- Keymap for reloading the configuration
vim.api.nvim_set_keymap('n', '<leader>r', ':source $MYVIMRC<CR>', opts)

-- Keymap to launch LazyGit in a floating window
vim.keymap.set('n', '<leader>gg' , ':LazyGit<CR>' , opts)

-- Telescope
vim.keymap.set('n', '<M-C-F>' , ':Telescope find_files<CR>' , opts)
vim.keymap.set('n', '<C-f>' , ':Telescope current_buffer_fuzzy_find<CR>' , opts)
vim.keymap.set('n', '<leader>f' , ':Telescope buffers<CR>' , opts)
vim.keymap.set('n', '<M-C-P>' , ':Telescope<CR>' , opts)
vim.keymap.set('n', '<M-C-T>' , ':Telescope colorscheme<CR>' , opts)


