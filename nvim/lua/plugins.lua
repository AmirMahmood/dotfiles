-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- automatically run :PackerCompile
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- You add plugins here
  use 'tpope/vim-sensible'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = [[require('config.nvim-tree')]],
  }

end)
