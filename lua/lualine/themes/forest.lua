local colors = require('forest.colors')

local nord = {}

forest.normal = {
	a = {fg = colors.nord0_gui, bg = colors.nord4_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
	c = {fg = colors.nord4_gui, bg = colors.nord1_gui},
}

forest.insert = {
	a = {fg = colors.nord0_gui, bg = colors.nord14_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

forest.visual = {
	a = {fg = colors.nord0_gui, bg = colors.nord9_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

forest.replace = {
	a = {fg = colors.nord0_gui, bg = colors.nord11_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

forest.command = {
	a = {fg = colors.nord0_gui, bg = colors.nord15_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

forest.innord10_gui = {
  a = {fg = colors.nord1_gui, bg = colors.nord0_gui, gui = 'bold'},
  b = {fg = colors.nord1_gui, bg = colors.nord0_gui},
  c = {fg = colors.nord1_gui, bg = colors.nord1_gui}
}

return forest
