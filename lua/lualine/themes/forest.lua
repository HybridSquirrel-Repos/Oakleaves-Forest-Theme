local colors = require('forest.colors')

local forest = {}

forest.normal = {
	a = {fg = colors.forest0_gui, bg = colors.forest4_gui, gui = 'bold'},
	b = {fg = colors.forest4_gui, bg = colors.forest10_gui},
	c = {fg = colors.forest4_gui, bg = colors.forest1_gui},
}

forest.insert = {
	a = {fg = colors.forest0_gui, bg = colors.forest14_gui, gui = 'bold'},
	b = {fg = colors.forest4_gui, bg = colors.forest10_gui},
}

forest.visual = {
	a = {fg = colors.forest0_gui, bg = colors.forest9_gui, gui = 'bold'},
	b = {fg = colors.forest4_gui, bg = colors.forest10_gui},
}

forest.replace = {
	a = {fg = colors.forest0_gui, bg = colors.forest11_gui, gui = 'bold'},
	b = {fg = colors.forest4_gui, bg = colors.forest10_gui},
}

forest.command = {
	a = {fg = colors.forest0_gui, bg = colors.forest15_gui, gui = 'bold'},
	b = {fg = colors.forest4_gui, bg = colors.forest10_gui},
}

forest.inforest10_gui = {
  a = {fg = colors.forest1_gui, bg = colors.forest0_gui, gui = 'bold'},
  b = {fg = colors.forest1_gui, bg = colors.forest0_gui},
  c = {fg = colors.forest1_gui, bg = colors.forest1_gui}
}

return forest
