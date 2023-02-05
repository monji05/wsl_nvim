local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.api.nvim_command([[packadd packer.nvim]])
vim.api.nvim_command([[packadd neosolarized.nvim]])
vim.api.nvim_command([[packadd colorbuddy.nvim]])
vim.api.nvim_command([[packadd telescope.nvim]])
vim.api.nvim_command([[packadd nvim-lspconfig]])
vim.api.nvim_command([[packadd null-ls.nvim]])
vim.api.nvim_command([[packadd mason.nvim]])
vim.api.nvim_command([[packadd mason-lspconfig.nvim]])
vim.api.nvim_command([[packadd lualine.nvim]])
vim.api.nvim_command([[packadd lspkind-nvim]])
vim.api.nvim_command([[packadd cmp-buffer]])
vim.api.nvim_command([[packadd cmp-nvim-lsp]])
vim.api.nvim_command([[packadd nvim-cmp]])
vim.api.nvim_command([[packadd lspsaga.nvim]])
vim.api.nvim_command([[packadd LuaSnip]])
vim.api.nvim_command([[packadd nvim-web-devicons]])
vim.api.nvim_command([[packadd gitsigns.nvim]])
vim.api.nvim_command([[packadd nvim-bufferline.lua]])
vim.api.nvim_command([[packadd vim-illuminate]])
vim.api.nvim_command([[packadd indent-blankline.nvim]])
vim.api.nvim_command([[packadd Comment.nvim]])
vim.api.nvim_command([[packadd nvim-hlslens]])
vim.api.nvim_command([[packadd nvim-treesitter]])
vim.api.nvim_command([[packadd nvim-ts-autotag]])
vim.api.nvim_command([[packadd nvim-autopairs]])
vim.api.nvim_command([[packadd toggleterm.nvim]])
vim.api.nvim_command([[packadd nvim-surround]])
vim.api.nvim_command([[packadd neo-tree.nvim]])
vim.api.nvim_command([[packadd nui.nvim]])
vim.api.nvim_command([[packadd nvim-markdown-preview]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    opt = true,
    requires = { 'tjdevries/colorbuddy.nvim', opt = true },
  }
  use { 'nvim-lualine/lualine.nvim', opt = true } -- Statusline
  use 'nvim-lua/popup.nvim'
  use { 'onsails/lspkind-nvim', opt = true } -- vscode-like pictograms
  use { 'hrsh7th/cmp-buffer', opt = true } -- nvim-cmp source for buffer words
  use { 'hrsh7th/cmp-nvim-lsp', opt = true } -- nvim-cmp source for neovim's built-in LSP
  use { 'hrsh7th/nvim-cmp', opt = true } -- Completion
  use { 'neovim/nvim-lspconfig', opt = true } -- LSP
  use { 'jose-elias-alvarez/null-ls.nvim', opt = true } -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use { 'williamboman/mason.nvim', opt = true }
  use { 'williamboman/mason-lspconfig.nvim', opt = true }

  use { 'glepnir/lspsaga.nvim', opt = true } -- LSP UIs
  use { 'L3MON4D3/LuaSnip', opt = true }
  use { 'nvim-treesitter/nvim-treesitter', opt = true }
  use { 'windwp/nvim-ts-autotag', opt = true }
  use { 'kyazdani42/nvim-web-devicons', opt = true } -- File icons
  use {
    'nvim-telescope/telescope.nvim',
    keys = { ';f', ';r', '\\', ';;' },
  }
  use { 'windwp/nvim-autopairs', opt = true }
  use { 'norcalli/nvim-colorizer.lua', opt = true }

  use { 'lewis6991/gitsigns.nvim', opt = true } -- Git diff marker
  use { 'akinsho/nvim-bufferline.lua', opt = true }
  use { 'RRethy/vim-illuminate', opt = true } -- highlight on current cursol word
  use { 'lukas-reineke/indent-blankline.nvim', opt = true } -- indent line
  use { 'numToStr/Comment.nvim', opt = true } --comment
  use { 'kevinhwang91/nvim-hlslens', opt = true } -- show count result search word
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    wants = 'plenary.nvim'
  }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    keys = { "fi" },
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim",
      opt = true
    },
    wants = { "nui.nvim" }
  }
  use {
    'akinsho/toggleterm.nvim', -- terminal on neovim
    tag = '*',
    keys = { '<C-\\>' }
  }

  use {
    'kylechui/nvim-surround',
    tag = "*",
    opt = true
  }

  use {
    'davidgranstrom/nvim-markdown-preview',
    opt = true,
    ft = {"markdown"}
  }

end)
