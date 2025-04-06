return {
	"williamboman/mason.nvim",
	opts = {
		-- https://github.com/williamboman/mason-lspconfig.nvim
		ensure_installed = {
			"markdownlint-cli2",
			"markdown-toc",
			"cmakelang",
			"cmakelint",
			"clangd",
			"gopls",
			"rust-analyzer",
			"clang-format",
			"jsonlint",
			"cmake-language-server",
			"gotestsum",
			"golines",
			"go-debug-adapter",
			"golangci-lint",
			"gotests",
			"goimports",
			"goimports-reviser",
			"golangci-lint-langserver",
			"lua-language-server",
			"prettier",
			"rust-analyzer",
			"shfmt",
			"stylua",
			"sonarlint-language-server",
			"gospel",
			"ast-grep",
		},
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
