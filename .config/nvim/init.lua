-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- lazy plugin manager
require("config.lazy")

-- catppuccin
require("catppuccin")

-- nvim-web-devicons
require("nvim-web-devicons").setup()

-- nvim-tree
require("nvim-tree").setup()

-- set correct catppuccin colour scheme
vim.cmd.colorscheme "catppuccin-mocha"

-- 4 space tabs are the only correct tabs
vim.opt.tabstop = 4
vim.opt.expandtab = true
