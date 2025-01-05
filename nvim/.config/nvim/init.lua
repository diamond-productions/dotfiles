-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- init file calls other files in the lua directory
require('options')
require('keymaps')
require('plugins-init')
-- Script to choose colortheme safely
require('colorscheme')
require('lsp')

--apply configuration for neovide
if vim.g.neovide then
    require('neovide')
end
