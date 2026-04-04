-- Please check `lua/core/settings.lua` to view the full list of configurable settings
local settings = {}

-- Examples
settings["use_ssh"] = true

settings["colorscheme"] = "catppuccin"

-- Disable the following plugins
settings["disabled_plugins"] = {
	-- scrolling / UI redundancy
	"karb94/neoscroll.nvim",
	"dstein64/nvim-scrollview",
	"codecompanion.nvim",
	"codecompanion-history.nvim",
	"copilot.lua",
	-- 🌳 Treesitter extras (core treesitter stays)
	-- "nvim-treesitter-textobjects",
	-- "nvim-treesitter-context",
	-- "nvim-treehopper",
	-- "nvim-ts-autotag",
	-- "nvim-ts-context-commentstring",
	-- "rainbow-delimiters.nvim",
	"vim-matchup",

	-- 🔔 Noise
	"todo-comments.nvim",
	"which-key.nvim",
	"copilot-cmp",
}

settings["transparent_background"] = function()
	return false
end

vim.api.nvim_set_keymap("n", "j", "jzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "kzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "G", "Gzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gg", "ggzz", { noremap = true, silent = true })

-- Center cursor when moving to next/previous search result
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })

-- Center cursor when jumping to first search result
vim.api.nvim_set_keymap("n", "/", "/\\vzz", { noremap = true, silent = false }) -- Search forward
vim.api.nvim_set_keymap("n", "?", "?\\vzz", { noremap = true, silent = false }) -- Search backward

vim.api.nvim_set_keymap("n", "<leader>q", ":Competitest run<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>su", ":Competitest show_ui<CR>", { noremap = true, silent = true })

return settings
