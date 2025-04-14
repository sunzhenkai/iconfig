return {
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			"mfussenegger/nvim-dap-python", --optional
			"nvim-telescope/telescope.nvim",
		},
		lazy = false,
		branch = "regexp", -- This is the regexp branch, use this for the new version
		keys = {
			{ ",v", "<cmd>VenvSelect<cr>" },
		},
		---@type venv-selector.Config
		opts = {
			-- Your settings go here
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "ninja", "rst", "python" } },
	},
	{
		"williamboman/mason.nvim",
		opts = {
			-- https://github.com/williamboman/mason-lspconfig.nvim
			ensure_installed = {
				"pylint",
				"debugpy",
				"pydocstyle",
				"python-lsp-server",
				-- "pyright",
				-- formatter
				"black",
				"isort",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "black" },
			},
			formatters = {
				black = {
					prepend_args = { "--line-length", "100" },
				},
			},
		},
	},
}
