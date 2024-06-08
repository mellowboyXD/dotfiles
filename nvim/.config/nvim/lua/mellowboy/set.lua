
vim.opt.nu = true
vim.opt.relativenumber = true

local size = 2
vim.opt.tabstop = size
vim.opt.softtabstop = size
vim.opt.shiftwidth = size
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.scrolloff = 8
vim.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- makeprg
vim.opt.makeprg='./build.sh'
