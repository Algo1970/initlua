
 --  base.lua 
vim.opt.clipboard = "unnamedplus"
vim.opt.whichwrap = "b,s,[,],<,>"
vim.opt.backspace = "indent,eol,start"
vim.opt.ambiwidth = "single"
vim.opt.wildmenu = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.showcmd = true
vim.opt.hlsearch = true
vim.opt.hidden = true
vim.opt.backup = true
vim.opt.backupdir = os.getenv("HOME") .. '/.vim/backup'
vim.opt.winblend = 20
vim.opt.pumblend = 20
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.nrformats = "bin,hex"
vim.opt.swapfile = false
vim.opt.formatoptions:remove('t')
vim.opt.formatoptions:append('mM')
vim.opt.foldmethod = "marker"

vim.cmd 'let g:python3_host_prog = "/usr/bin/python3"'

