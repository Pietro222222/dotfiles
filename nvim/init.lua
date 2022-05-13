require "plugins"
require "key_bindings"
require "neotree"
require "lsp"
require 'nvim-autopairs'.setup{}
--require 'toggleterm'
require'toggleterm'.setup{
	size = function(term)
    		if term.direction == "horizontal" then
      			return 15
    		elseif term.direction == "vertical" then
      			return vim.o.columns * 0.4
    		end
  	end,	
	persist_size = false,
	open_mapping = [[<C-t>]]
}
vim.opt.number = true
vim.opt.mouse = 'a' 
-- color scheme related shit
local theme = {
  background = "dark",
  cmd = [[colorscheme gruberdarker]]
}
vim.opt.termguicolors = true
vim.o.background = theme.background
vim.cmd(theme.cmd)

--dashboard

--yep i stole many things from you, noname!
function hi(hi_name, hi_table, force)
	local cmd_str

	if force == true then
		cmd_str = "hi! " .. hi_name
	else
		cmd_str = "hi " .. hi_name
	end

	for key, value in pairs(hi_table) do
		cmd_str = cmd_str .. " " .. key .. "=" .. value
	end

	vim.cmd(cmd_str)
end

local colors = {
	black2 = "#2b2b3b",
	grey_fg = '#545277',
	light_grey = "#928374",
	black = "#212131",
	white = "#b6bcdd",
	blue = "#458588",
	red = "#fb4934",
	bg = "#242434",
	yellow = "#fabd2f",
	green = "#7cd380",
	fg = "#bbc2cf",
	orange = "#e37858",
	purple = "#b782da",
	lightbg = "#333748",
	cyan = '#529dbc',
} 

hi("DashboardHeader", { guifg = colors.red })
hi("DashboardFooter", { guifg = colors.yellow })
hi("DashboardCenter", { guifg = colors.blue })
hi("DashboardShortCut", { guifg = colors.blue })

vim.g.dashboard_custom_header = {
  ' ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄       ▄  ▄▄▄▄▄▄▄▄▄▄▄ ',
  '▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▐░▌▐░░░░░░░░░░░▌',
  '▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀  ▐░▌   ▐░▌ ▐░█▀▀▀▀▀▀▀█░▌',
  '▐░▌          ▐░▌            ▐░▌ ▐░▌  ▐░▌       ▐░▌',
  '▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄    ▐░▐░▌   ▐░▌       ▐░▌',
  '▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌    ▐░▌    ▐░▌       ▐░▌',
  ' ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀    ▐░▌░▌   ▐░▌       ▐░▌',
  '          ▐░▌▐░▌            ▐░▌ ▐░▌  ▐░▌       ▐░▌',
  ' ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄  ▐░▌   ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌',
  '▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▐░▌▐░░░░░░░░░░░▌',
  ' ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀       ▀  ▀▀▀▀▀▀▀▀▀▀▀ ',
}

vim.g.dashboard_custom_footer = {
	"Busco Sexo. - Sigma",
}
vim.g.dashboard_custom_section = {
	a = { description = { "" }, command = "" },
}

vim.g["instant_username"] = "Pie"
