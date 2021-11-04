local forest = { --chnage everything here and in theme config file 

    --16 colors
    red = "#ff5647", -- red
    yellow = "#d9b72b", -- yellow
    blue = "#6c95eb", -- blue
    gray = "#787878", -- gray
    green = "#85c46c", -- green
    mangenta = "#d688d4", -- mangenta
    cyan = "#39cc8f", -- cyan
    darkgray = "#595959", -- dark gray
    brown = "#686868", -- white
    darkbrown = "#262626", -- background
    white = "#dbdbdb", -- white 
    brown = "#c9a26d", -- string
    pink = "#ed94c0", -- numbers
    lightblue = "#66c3cc", -- escape char
    purple = "#c191ff", -- classes/strucs
    darkgreen = "#487d34", -- special comment


    brightred ="#ff8870", -- bright red
    brightgreen ="#adeb96", -- bright green
    brightyellow = "#f5d86a", -- bright yellow
    brightblue = "#add3ff", -- bright blue
    brightmagenta = "#ffbffe", -- bright magenta
    brightcyan = "#7df0c0", -- bright cyan
    none = "NONE"
    
    
    
    

    --[[


  nord0_gui = "#2E3440"        ,
  nord1_gui = "#3B4252"        ,
  nord2_gui = "#434C5E"        ,
  nord3_gui = "#4C566A"        ,
  nord3_gui_bright = "#616E88" ,
  nord4_gui = "#D8DEE9"        ,
  nord5_gui = "#E5E9F0"        ,
  nord6_gui = "#ECEFF4"        ,
  nord7_gui = "#8FBCBB"        ,
  nord8_gui = "#88C0D0"        ,
  nord9_gui = "#81A1C1"        ,
  nord10_gui = "#5E81AC"       ,
  nord11_gui = "#BF616A"       ,
  nord12_gui = "#D08770"       ,
  nord13_gui = "#EBCB8B"       ,
  nord14_gui = "#A3BE8C"       ,
  nord15_gui = "#B48EAD"       ,
  none =          'NONE'

    forest0_gui = "#262626", --background
    forest1_gui = "#3B4252", -- maybe dot methods 
    forest2_gui = "#434C5E", -- highlight
    forest3_gui = "#85c46c", -- comments -- not comments its , and . 
    forest3_gui_bright = "#85c46c", -- comments
    forest4_gui = "#D8DEE9", --
    forest5_gui = "#E5E9F0", -- text
    forest6_gui = "#ECEFF4", -- 
    forest7_gui = "#39cc8f", -- functions
    forest8_gui = "#39cc8f", -- methods
    forest9_gui = "#6c95eb", -- keywords
    forest10_gui = "#616E88", -- command line autocmp bg and maybe dot methods
    forest11_gui = "#ff5647", -- error
    forest12_gui = "#D08770", -- not in use?
    forest13_gui = "#EBCB8B", -- terminal color?
    forest14_gui = "#c9a26d", -- strings
    forest15_gui = "#ed94c0", -- numbers
    none =          'NONE' ]]--
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





--[[


local color = {
"#262626", -- background
"#6c95eb", -- keywords
"#c9a26d", -- string
"#ed94c0", -- numbers
"#85c46c", -- comments
"#39cc8f", -- methonds/functions
"#66c3cc", -- escape char
"#d688da", -- escape char 2
"#c191ff", -- classes/strucs
"#ff5647", -- error 
}

local allcolors = {
"#ff5647", -- red
"#d9b72b", -- yellow
"#bdbdbd", -- white
"#6c95eb", -- blue
"#787878", -- gray
"#85c46c", -- green
"#d688d4", -- mangenta
"#39cc8f", -- cyan
"#595959", -- dark gray
"#686868", -- white
"#262626", -- background
"#dbdbdb", -- white 


"#ff8870", -- bright red
"#adeb96", -- bright green
"#f5d86a", -- bright yellow
"#add3ff", -- bright blue
"#ffbffe", -- bright magenta
"#7df0c0", -- bright cyam
}






local truecolors = {
"#85c46c", -- comments
"#6c95eb", -- keywords
"#39cc8f", -- methods
"#ed94c0", -- numbers
"#66c3cc", -- varibles
"#d688d4", -- escaped charaters

"#66c3cc", --like \n
"#c9a26d", -- strings
"#c191ff", -- classes
"#ff5647", -- Error
"#262626", -- background

"#03241b", --background
"#141c29",
"#1c1c2b",
"#2a282c",


}



local colors = {
 
"#58594d", "#9f973d", "#343812", "#8ea273", "#586a3c",
"#847a83", "#a19fa9", "#ced0d2", "#cdd8e0", "#6789a4",
"#294e68", "#1c2d4f", "#000225", "#df1233", "#752532",
"#2a282c", "#1c1c2b", "#141c29", "#6e8986", "#658078",
"#577571", "#79a19e", "#567c92", "#7f9caa", "#dee5e8",
"#b0c1bd", "#8da3a0", "#618173", "#46694e", "#284a34",
"#132b1e", "#4c4219", "#b5760b", "#f0b240", "#d79f62",
"#c4bb9d", "#03141b", "#092622", "#42271a", "#6c2b1e",
"#bb624b", "#f4b085", "#bca091", "#b69041", "#dda838",
"#fed269", "#3b3424", "#6c7f9c", "#79942c", "#1c1411",
"#34331c", "#120100", "#320405", "#660201", "#a5000d",
"#d91217", "#51bad8", "#7ea515", "#55460e", "#141304",
"#241804", "#3f3407", "#88584d", "#482d1f", "#e26c1e",
"#1c0c05", "#dd613d", "#eae5e0", "#837669", "#4e4a4c",
"#856721", "#380607", "#fe2f43", "#840825", "#552532",
"#253049", "#161716", "#7e86a0", "#5b607c", "#4c482f",
"#4b5715", "#566d1f", "#092f0a", "#142d1f", "#654a96",
"#9c75dd", "#5786bc", "#cd749c", "#63b0b0",

"#5786bc", --keyworks 
"#9c75dd",--class
"#9c75dd",-- parenthaes lines 
"#7ea515",--functions -- greem
"#7ea515",--methods  -- green
"#e26c1e",--stringtext -- neon green
"#bca091", "#a19fa9", --commentstext -- dark green
"#df1233",--error
"#03241b", --background
"#141c29",
"#1c1c2b",
"#2a282c",--background

"#51bad8",--varibles
"#cd749c",--values

"#9c75dd",--string modifyers

}

]]--

