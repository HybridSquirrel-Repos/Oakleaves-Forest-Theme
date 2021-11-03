local forest = {
    
    --16 colors
    





    none =          'NONE',
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.forest_contrast == true then
  forest.sidebar = forest.forest1_gui
  forest.float = forest.forest1_gui
else
  forest.sidebar = forest.forest0_gui
  forest.float = forest.forest0_gui
end

if vim.g.forest_cursorline_transparent == true then
  forest.cursorlinefg = forest.forest0_gui
else
  forest.cursorlinefg = forest.forest1_gui
end

return forest
