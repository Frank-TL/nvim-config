-- Packer installed with the following command
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim


-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { 'catppuccin/nvim', as = 'catppuccin' }

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('theprimeagen/harpoon')

	use {
		'nvim-lualine/lualine.nvim',
		--requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},		-- Required
			{'williamboman/mason.nvim',		-- Optional
			run = function()
				pcall(vim.api.nvim_command, 'MasonUpdate')
			end,
			},
			{'williamboman/mason-lspconfig.nvim'},	-- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},			-- Required
			{'hrsh7th/cmp-nvim-lsp'},		-- Required
			{'L3MON4D3/LuaSnip'},			-- Required
		}
	}
end)
