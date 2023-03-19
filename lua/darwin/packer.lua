--This file can be loaded by calling `lua require('plugins)` from your init.vim
--
--Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  --Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ThePrimeagen/vim-be-good'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use('theprimeagen/harpoon')

  use({
    'rose-pine/neovim',
  })
  use "EdenEast/nightfox.nvim"
  use 'folke/tokyonight.nvim'
  use 'haishanh/night-owl.vim'
  use 'Mofiqul/dracula.nvim'
  use "olimorris/onedarkpro.nvim"
  use 'kyazdani42/nvim-palenight.lua'
  use 'marko-cerovac/material.nvim'
  use 'shaunsingh/moonlight.nvim'

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
  use 'norcalli/nvim-colorizer.lua' -- highlighter
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'kyazdani42/nvim-web-devicons' -- File icon
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'akinsho/toggleterm.nvim' -- Toggle terminal
  use 'akinsho/nvim-bufferline.lua' -- buffer line and tab
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'folke/zen-mode.nvim' -- Zen mode

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require('lspsaga').setup({})
    end,
  })

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
end)
