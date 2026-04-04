-- 		fg = "#e4e4ef",
-- 		fg1 = "#f4f4ff",
-- 		fg2 = "#f5f5f5",
-- 		white = "#ffffff",
-- 		black = "#000000",
-- 		bg1 = "#101010",
-- 		bg = "#181818", -- base background
-- 		bg2 = "#282828",
-- 		bg3 = "#453d41",
-- 		bg4 = "#484848",
-- 		bg5 = "#52494e",
-- 		red1 = "#c73c3f",
-- 		red = "#f43841",
-- 		red2 = "#ff4f58",
-- 		green = "#73c936",
-- 		yellow = "#ffdd33",
-- 		brown = "#cc8c3c",
-- 		quartz = "#95a99f",
-- 		niagara2 = "#303540",
-- 		niagara1 = "#565f73",
-- 		niagara = "#96a6c8",
-- 		wisteria = "#9e95c7",
if not vim.g.vscode then
	vim.o.guifont = "0xproto nerd font"
	pcall(require, "core")

	local colors = {
		red = "#fe605e",
		green = "#8daf62",
		blue = "#85afd6",
		orange = "#fbb065",
		white = "#bebfb8",
		brown = "#977c48",
		purple = "#a983ac",

		-- backgrounds
		bg = "#181818",
		bg2 = "#222222",
		bg3 = "#2b2620",
		bg4 = "#313131",
		bg5 = "#383430",
		quartz = "#cfcfc6",
		orangebg = "#d19a66",
	}

	local set = vim.api.nvim_set_hl
	vim.o.background = "dark"
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	-- ui / base
	set(0, "normal", { fg = colors.white, bg = colors.bg })
	set(0, "cursorline", { bg = colors.bg2 })
	set(0, "cursorlinenr", { fg = colors.orange })
	set(0, "linenr", { fg = colors.bg5 })
	set(0, "cursor", { bg = colors.orange })
	set(0, "visual", {
		bg = colors.orangebg,
		fg = colors.bg,
	})
	set(0, "colorcolumn", { bg = colors.bg3 })
	set(0, "matchparen", { bg = colors.bg3, bold = true })
	set(0, "whitespace", { fg = colors.bg4 })
	set(0, "statusline", { fg = colors.white, bg = colors.bg3 })
	set(0, "statuslinenc", { fg = colors.quartz, bg = colors.bg3 })
	set(0, "vertsplit", { fg = colors.bg3 })
	set(0, "winseparator", { fg = colors.bg3 })

	-- popup / menu
	set(0, "pmenu", { fg = colors.white, bg = colors.bg2 })
	set(0, "pmenusel", { fg = colors.bg, bg = colors.orange })
	set(0, "pmenusbar", { bg = colors.bg3 })
	set(0, "pmenuthumb", { bg = colors.bg4 })

	-- search
	set(0, "search", { fg = colors.bg, bg = colors.orange })
	set(0, "incsearch", { fg = colors.bg, bg = colors.orange })

	-- core syntax
	set(0, "comment", { fg = colors.brown, italic = true })
	set(0, "string", { fg = colors.green })
	set(0, "character", { fg = colors.green })
	set(0, "function", { fg = colors.blue })
	set(0, "identifier", { fg = colors.white })
	set(0, "constant", { fg = colors.quartz })
	set(0, "type", { fg = colors.blue })
	set(0, "special", { fg = colors.red })
	set(0, "delimiter", { fg = colors.white })
	set(0, "title", { fg = colors.blue, bold = true })

	-- numbers purple
	set(0, "number", { fg = colors.purple })
	set(0, "float", { fg = colors.purple })
	set(0, "boolean", { fg = colors.purple })
	set(0, "@number", { fg = colors.purple })

	-- keywords red
	set(0, "keyword", { fg = colors.red, bold = true })
	set(0, "conditional", { fg = colors.red })
	set(0, "repeat", { fg = colors.red })
	set(0, "preproc", { fg = colors.red })
	set(0, "include", { fg = colors.red })
	set(0, "label", { fg = colors.red })
	set(0, "operator", { fg = colors.red })
	set(0, "statement", { fg = colors.red })
	set(0, "storageclass", { fg = colors.red })

	-- todo orange
	set(0, "todo", { fg = colors.bg, bg = colors.orange })

	-- lsp / diagnostic
	set(0, "error", { fg = colors.red, bold = true })
	set(0, "warning", { fg = colors.orange })
	set(0, "info", { fg = colors.blue })
	set(0, "hint", { fg = colors.green })

	set(0, "diagnosticerror", { fg = colors.red })
	set(0, "diagnosticwarn", { fg = colors.orange })
	set(0, "diagnosticinfo", { fg = colors.blue })
	set(0, "diagnostichint", { fg = colors.green })

	-- git signs
	set(0, "gitsignsadd", { fg = colors.green })
	set(0, "gitsignschange", { fg = colors.brown })
	set(0, "gitsignsdelete", { fg = colors.red })

	-- floating windows
	set(0, "normalfloat", { bg = colors.bg })
	set(0, "floatborder", { fg = colors.bg5, bg = colors.bg })

	-- treesitter
	set(0, "@comment", { fg = colors.brown, italic = true })
	set(0, "@string", { fg = colors.green })
	set(0, "@function", { fg = colors.blue })
	set(0, "@type", { fg = colors.blue })
	set(0, "@constant", { fg = colors.quartz })
	set(0, "@keyword", { fg = colors.red, bold = true })
	set(0, "@conditional", { fg = colors.red })
	set(0, "@repeat", { fg = colors.red })
	set(0, "@preproc", { fg = colors.red })
	set(0, "@operator", { fg = colors.red })
	set(0, "@variable", { fg = colors.white })
	set(0, "@parameter", { fg = colors.white })
	set(0, "@field", { fg = colors.white })
	set(0, "@number", { fg = colors.purple })

	-- compatibility links
	set(0, "tsfunction", { link = "function" })
	set(0, "tskeyword", { link = "keyword" })
	set(0, "tsstring", { link = "string" })
	set(0, "tsfunction", { fg = colors.green })
	set(0, "@function", { fg = colors.green })

	-- extra: white → targeted orange rules
	set(0, "@constant.macro", { fg = colors.orange })
	set(0, "macro", { fg = colors.orange })
	set(0, "@constant", { fg = colors.orange })
	-- set(0, "@enummember", { fg = colors.orange })
	set(0, "@variable.constant", { fg = colors.orange })
	-- set(0, "@property", { fg = colors.orange })
	-- set(0, "@variable.parameter", { fg = colors.orange })

	-- Enable soft wrapping (visual wrap, not real newline)
	vim.opt.wrap = true

	-- Wrap by screen width, not by words in the file
	vim.opt.linebreak = true

	-- Show an indicator for wrapped lines
	vim.opt.showbreak = "↳ "

	-- Optional: make wrapped lines align nicely
	vim.opt.breakindent = true
	vim.opt.breakindentopt = "shift:2"

	-- Optional but recommended: disable horizontal scrolling
	vim.opt.sidescroll = 1
	vim.opt.sidescrolloff = 5

	vim.cmd([[
		hi link cpppreproc keyword
		hi link cpreproc keyword
		hi link preproc keyword
		hi link operator keyword
		hi link tsnumber number
	]])

	vim.g.colors_name = "gruber-darker-user-palette-orange-more"

	vim.keymap.set("n", "/", "/\\v", { noremap = true })
end

-- if not vim.g.vscode then
-- 	-- vim.o.guifont = "Monospace:h12"
-- 	require("core")

-- 	-- Gruber Darker Theme Setup (inline)
-- 	local colors = {
-- 		fg = "#e4e4ef",
-- 		fg1 = "#f4f4ff",
-- 		fg2 = "#f5f5f5",
-- 		white = "#ffffff",
-- 		black = "#000000",
-- 		bg1 = "#101010",
-- 		bg = "#181818", -- base background
-- 		bg2 = "#282828",
-- 		bg3 = "#453d41",
-- 		bg4 = "#484848",
-- 		bg5 = "#52494e",
-- 		red1 = "#c73c3f",
-- 		red = "#f43841",
-- 		red2 = "#ff4f58",
-- 		green = "#73c936",
-- 		yellow = "#ffdd33",
-- 		brown = "#cc8c3c",
-- 		quartz = "#95a99f",
-- 		niagara2 = "#303540",
-- 		niagara1 = "#565f73",
-- 		niagara = "#96a6c8",
-- 		wisteria = "#9e95c7",
-- 	}

-- 	local set = vim.api.nvim_set_hl

-- 	vim.o.background = "dark"
-- 	vim.cmd("highlight clear")
-- 	vim.cmd("syntax reset")

-- 	-- Base highlights
-- 	set(0, "Normal", { fg = colors.fg, bg = colors.bg })
-- 	set(0, "Comment", { fg = colors.brown, italic = true })
-- 	set(0, "String", { fg = colors.green })
-- 	set(0, "Function", { fg = colors.niagara })
-- 	set(0, "Keyword", { fg = colors.yellow, bold = true })
-- 	set(0, "Constant", { fg = colors.quartz })
-- 	set(0, "Type", { fg = colors.quartz })
-- 	set(0, "Identifier", { fg = colors.fg1 })
-- 	set(0, "Statement", { fg = colors.yellow })
-- 	set(0, "Special", { fg = colors.red })
-- 	set(0, "Todo", { fg = colors.yellow, bg = colors.bg3 })
-- 	set(0, "Error", { fg = colors.red2, bold = true })
-- 	set(0, "LineNr", { fg = colors.bg5 })
-- 	set(0, "CursorLineNr", { fg = colors.yellow })
-- 	set(0, "Visual", { bg = colors.bg4 })
-- 	set(0, "Cursor", { bg = colors.yellow })
-- 	set(0, "ColorColumn", { bg = colors.bg2 })
-- 	set(0, "Whitespace", { fg = colors.bg4 })
-- 	set(0, "MatchParen", { bg = colors.bg5 })

-- 	-- UI
-- 	set(0, "StatusLine", { fg = colors.white, bg = colors.bg2 })
-- 	set(0, "StatusLineNC", { fg = colors.quartz, bg = colors.bg2 })
-- 	set(0, "VertSplit", { fg = colors.bg3 })
-- 	set(0, "WinSeparator", { fg = colors.bg3 })
-- 	set(0, "Pmenu", { fg = colors.fg, bg = colors.bg2 })
-- 	set(0, "PmenuSel", { fg = colors.fg, bg = colors.bg1 })
-- 	set(0, "Search", { fg = colors.black, bg = colors.fg2 })
-- 	set(0, "IncSearch", { fg = colors.black, bg = colors.fg2 })

-- 	-- LSP / Diagnostic
-- 	set(0, "DiagnosticError", { fg = colors.red })
-- 	set(0, "DiagnosticWarn", { fg = colors.yellow })
-- 	set(0, "DiagnosticInfo", { fg = colors.niagara })
-- 	set(0, "DiagnosticHint", { fg = colors.quartz })

-- 	-- GitSigns
-- 	set(0, "GitSignsAdd", { fg = colors.green })
-- 	set(0, "GitSignsChange", { fg = colors.brown })
-- 	set(0, "GitSignsDelete", { fg = colors.red1 })

-- 	-- Treesitter
-- 	set(0, "@function", { link = "Function" })
-- 	set(0, "@keyword", { link = "Keyword" })
-- 	set(0, "@string", { link = "String" })

-- 	-- ToggleTerm background
-- 	set(0, "NormalFloat", { bg = colors.bg }) -- floating win bg
-- 	set(0, "FloatBorder", { fg = colors.bg5, bg = colors.bg })
-- 	vim.cmd([[
-- 		hi link cpppreproc keyword
-- 		hi link cpreproc keyword
-- 		hi link preproc keyword
-- 		hi link operator keyword
-- 		hi link tsnumber number
-- 	]])

-- 	vim.g.colors_name = "gruber-darker-user-palette-orange-more"

-- 	vim.keymap.set("n", "/", "/\\v", { noremap = true })
-- end
