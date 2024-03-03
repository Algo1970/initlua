
vim.cmd [[packadd packer.nvim]]
require("packer").startup(function()
  --- pluginの管理 ---
  use 'wbthomason/packer.nvim'
  --- language serverの管理 ---	
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'onsails/lspkind-nvim' 
  -- nvim-cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  -- snippet
  use "dcampos/nvim-snippy"
  use "dcampos/cmp-snippy"
  -- 
  use 'pechorin/any-jump.vim'

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  } 
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'
  use 'ryanoasis/vim-devicons' 
  --use 'cocopon/iceberg.vim'
  use 'sainnhe/sonokai'
  use 'sainnhe/everforest'
  -- use 'tomasr/molokai'
  --use 'tanvirtin/monokai.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'brenoprata10/nvim-highlight-colors'
  -- use 'nvim-treesitter/playground'
  use "kelly-lin/ranger.nvim"
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons'}}
  use 'mattn/emmet-vim'
  -- use 'folke/noice.nvim'
  use 'terrortylor/nvim-comment'
  -- use 'hkupty/iron.nvim'
  -- use 'jalvesaq/Nvim-R'
  -- use 'jalvesaq/cmp-nvim-r'
  use 'tyru/open-browser.vim'
  use 'phaazon/hop.nvim'
  use { 'milanglacier/yarepl.nvim' }
  -- use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  --   require("toggleterm").setup()
  -- end}
  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }
  use {
    'stevearc/conform.nvim',
    config = function() require('conform').setup() end
  }
  -- use 'vim-denops/denops.vim'
  -- use 'monaqa/dps-dial.vim'
  -- use 'monaqa/dial.vim'
  -- use 'averms/black-nvim' 
end)


