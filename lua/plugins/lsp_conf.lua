return {
	-- MASON
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	-- LSP Backend
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
				},
			})
		end,
	},
	-- LSP Front end
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- local on_attach = require("cmp_nvim_lsp").on_attach
			local lspconf = require("lspconfig")
			local util = require("lspconfig/util")

			-- LUA
			lspconf.lua_ls.setup({
				filetypes = { "lua" },
				capabilities = capabilities,
			})
			-- Python
			lspconf.pylsp.setup({
				filetypes = { "python" },
				capabilities = capabilities,
			})

			-- Rust
			lspconf.rust_analyzer.setup({
				capabilities = capabilities,
				filetypes = { "rust" },
				root_dir = util.root_pattern("Cargo.toml"),
				settings = {
					["rust_analyzer"] = {
						cargo = {
							allFeatures = true,
						},
					},
				},
			})

			-- key bindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
		end,
	},
}
