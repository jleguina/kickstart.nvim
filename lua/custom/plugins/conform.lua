return {
	'stevearc/conform.nvim',
	opts = {},

	config = function()
		require('conform').setup {
			formatters_by_ft = {
				lua = { 'stylua' },
				-- Conform will run multiple formatters sequentially
				python = { 'ruff_fix', 'ruff_format' },
				-- Use a sub-list to run only the first available formatter
				javascript = { { 'prettierd', 'prettier' } },
				javascriptreact = { { 'prettierd', 'prettier' } },
				typescript = { { 'prettierd', 'prettier' } },
				typescriptreact = { { 'prettierd', 'prettier' } },
				vue = { { 'prettierd', 'prettier' } },
				css = { { 'prettierd', 'prettier' } },
				scss = { { 'prettierd', 'prettier' } },
				less = { { 'prettierd', 'prettier' } },
				html = { { 'prettierd', 'prettier' } },
				json = { { 'prettierd', 'prettier' } },
				jsonc = { { 'prettierd', 'prettier' } },
				yaml = { { 'prettierd', 'prettier' } },
				markdown = { { 'prettierd', 'prettier' } },
				mdx = { { 'prettierd', 'prettier' } },
				graphql = { { 'prettierd', 'prettier' } },
				handlebars = { { 'prettierd', 'prettier' } },
				rust = { 'rustfmt' },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_fallback = true,
			},
		}
	end,
}
