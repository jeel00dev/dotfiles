return function()
	-- Hide default mode text (NORMAL / INSERT)
	vim.opt.showmode = false

	-- Minimal custom theme
	local minimal_theme = {
		normal = {
			c = { fg = "#c6c6c6", bg = "#181818" },
		},
		inactive = {
			c = { fg = "#6c6c6c", bg = "#181818" },
		},
	}

	require("lualine").setup({
		options = {
			icons_enabled = false,
			theme = minimal_theme,
			component_separators = "",
			section_separators = "",
			always_divide_middle = false,
			globalstatus = false,
		},

		sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { "location" }, -- line:column only
		},

		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},

		tabline = {},
		extensions = {},
	})

	-- Hard force statusline background (extra safety)
	vim.cmd("hi StatusLine guibg=#181818 ctermbg=235")
	vim.cmd("hi StatusLineNC guibg=#181818 ctermbg=235")
end
