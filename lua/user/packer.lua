local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- My plugins here
  use("wbthomason/packer.nvim")

	--color theme
	use("navarasu/onedark.nvim")

	--treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	--Lsp

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	--cmp
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")

	--luasnip

	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	--autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	--autotag
	use("windwp/nvim-ts-autotag")

	--plenary
	use("nvim-lua/plenary.nvim")

	--null
	use("jose-elias-alvarez/null-ls.nvim")

	--telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	--dap
	use("mfussenegger/nvim-dap")
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
