return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	opts = function()
		local opts = {
			theme = 'doom',
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				week_header = {
					enable = true,
				},
				center = {
					{ action = 'Telescope find_files', desc = ' Find file', icon = ' ', key = 'f' },
					{ action = 'ene | startinsert', desc = ' New file', icon = ' ', key = 'n' },
					{ action = 'Telescope oldfiles', desc = ' Recent files', icon = ' ', key = 'r' },
					{ action = 'Telescope live_grep', desc = ' Find text', icon = ' ', key = 'g' },
					{ action = 'Telescope dotfiles', desc = ' Config', icon = ' ', key = 'c' },
					{ action = 'lua require("persistence").load()', desc = ' Restore Session', icon = ' ', key = 's' },
					{ action = 'Lazy', desc = ' Lazy', icon = '󰒲 ', key = 'l' },
					{ action = 'qa', desc = ' Quit', icon = ' ', key = 'q' },
				},
			},
		}

		return opts
	end,
	dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
