local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- === Цветовые схемы ===
  { 'joshdick/onedark.vim' },
  { 'catppuccin/nvim' },
  { 'rebelot/kanagawa.nvim' },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { 'craftzdog/solarized-osaka.nvim' },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {} },
    
  -- === LSP ===
  { 'nvim-treesitter/nvim-treesitter' }, 
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' }, 
  { 'hrsh7th/cmp-buffer' }, 
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' }, 
  { 'hrsh7th/nvim-cmp' },
  { 'williamboman/mason.nvim', build = ':MasonUpdate' },
  { 
    'mfussenegger/nvim-lint',
    event = {
      'BufReadPre',
      'BufNewFile'
    }
  },
  { 'mhartington/formatter.nvim' },
  { 'hrsh7th/cmp-nvim-lsp-signature-help' }, 
  {
    'linrongbin16/lsp-progress.nvim',
    event = { 'VimEnter' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('lsp-progress').setup() end
  }, 
  {
    "folke/trouble.nvim",
     dependencies = { "nvim-tree/nvim-web-devicons" },
     opts = {}
  },

  -- === Другое ===
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  }, 
  { 'lewis6991/gitsigns.nvim' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', 
      'linrongbin16/lsp-progress.nvim'
    }
  }, 
  { 'nvim-tree/nvim-web-devicons' },
  { 'windwp/nvim-autopairs' },
  { 'windwp/nvim-ts-autotag' },
  { 'nvim-tree/nvim-tree.lua' },
  { 'akinsho/bufferline.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  {
	  "L3MON4D3/LuaSnip",
	  version = "v2.*", 	  
    build = "make install_jsregexp"
  },
  { "saadparwaiz1/cmp_luasnip" },
  { "ExEr7um/vue3-vscode-snippets" },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  { 'ggandor/leap.nvim' },
  {
    'smoka7/multicursors.nvim',
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
            {
                mode = { 'v', 'n' },
                '<Leader>m',
                '<cmd>MCstart<cr>',
                desc = 'Create a selection for selected text or word under the cursor',
            },
        },
  },
});
