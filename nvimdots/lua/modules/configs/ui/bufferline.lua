return function()
	require("bufferline").setup({
		options = {
			-- Core behavior
			mode = "buffers",
			always_show_bufferline = false,

			-- Remove all clutter
			show_buffer_icons = false,
			show_buffer_close_icons = false,
			show_close_icon = false,
			show_tab_indicators = false,
			diagnostics = false,
			numbers = "none",

			-- Spacing & separators
			separator_style = "none",
			tab_size = 12,

			-- Mouse disabled (optional but clean)
			close_command = nil,
			right_mouse_command = nil,
			middle_mouse_command = nil,

			-- Offsets disabled
			offsets = {},

			-- Keep buffers, no UI tricks
			enforce_regular_tabs = false,
		},

		highlights = {
			fill = {
				bg = "#181818",
			},
			background = {
				bg = "#181818",
				fg = "#6c6c6c",
			},
			buffer_selected = {
				bg = "#181818",
				fg = "#c6c6c6",
				bold = true,
				italic = false,
			},
			buffer_visible = {
				bg = "#181818",
				fg = "#8a8a8a",
			},
			separator = {
				bg = "#181818",
				fg = "#181818",
			},
			separator_selected = {
				bg = "#181818",
				fg = "#181818",
			},
			separator_visible = {
				bg = "#181818",
				fg = "#181818",
			},
		},
	})
end
