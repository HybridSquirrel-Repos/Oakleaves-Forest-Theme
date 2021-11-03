local forest = {
  --16 colors
  forest0_gui = "#2E3440"        ,
  forest1_gui = "#3B4252"        ,
  forest2_gui = "#434C5E"        ,
  forest3_gui = "#4C566A"        ,
  forest3_gui_bright = "#616E88" ,
  forest4_gui = "#D8DEE9"        ,
  forest5_gui = "#E5E9F0"        ,
  forest6_gui = "#ECEFF4"        ,
  forest7_gui = "#8FBCBB"        ,
  forest8_gui = "#88C0D0"        ,
  forest9_gui = "#81A1C1"        ,
  forest10_gui = "#5E81AC"       ,
  forest11_gui = "#BF616A"       ,
  forest12_gui = "#D08770"       ,
  forest13_gui = "#EBCB8B"       ,
  forest14_gui = "#A3BE8C"       ,
  forest15_gui = "#B48EAD"       ,
  none =          'NONE'
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
