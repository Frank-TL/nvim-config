-- Bootstrap Lazy

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{'catppuccin/nvim', name = 'catppuccin', priority = 1000},
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
	{'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = {'nvim-lua/plenary.nvim'}},
	{'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons'}, -- Test
	{'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons'},
	{'tpope/vim-fugitive'},
	{'theprimeagen/harpoon'},
	-- LSP
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	-- LSP servers
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
}

local opts = {}

require("lazy").setup(plugins, opts)
