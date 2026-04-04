local custom = {}

custom["sphamba/smear-cursor.nvim"] = {
	opts = {
		cursor_color = "#00ccff",
		stiffness = 0.9,
		trailing_stiffness = 0.3,
		damping = 0.6,
		trailing_exponent = 4,
		time_interval = 3,
	},
}

return custom
