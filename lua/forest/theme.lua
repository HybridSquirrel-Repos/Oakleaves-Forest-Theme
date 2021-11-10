local forest = require("forest.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
    local syntax = {
        Type = { fg = forest.pink }, -- int, long, char, etc.
        StorageClass = { fg = forest.blue }, -- static, register, volatile, etc.
        Structure = { fg = forest.blue }, -- struct, union, enum, etc.
        Constant = { fg = forest.blue }, -- any constant
        Character = { fg = forest.brown }, -- any character constant: 'c', '\n'
        Number = { fg = forest.pink }, -- a number constant: 5
        Boolean = { fg = forest.blue }, -- a boolean constant: TRUE, false
        Float = { fg = forest.pink }, -- a floating point constant: 2.3e10
        Statement = { fg = forest.blue }, -- any statement
        Label = { fg = forest.blue }, -- case, default, etc.
        Operator = { fg = forest.white }, -- sizeof", "+", "*", etc.
        Exception = { fg = forest.blue }, -- try, catch, throw
        PreProc = { fg = forest.blue }, -- generic Preprocessor
        Include = { fg = forest.blue }, -- preprocessor #include
        Define = { fg = forest.blue }, -- preprocessor #define
        Macro = { fg = forest.blue }, -- same as Define
        Typedef = { fg = forest.blue }, -- A typedef
        PreCondit = { fg = forest.blue }, -- preprocessor #if, #else, #endif, etc.
        Special = { fg = forest.mangenta }, -- any special symbol
        SpecialChar = { fg = forest.mangenta }, -- special character in a constant //change
        Tag = { fg = forest.purple }, -- you can use CTRL-] on this
        Delimiter = { fg = forest.white }, -- character that needs attention like , or .
        SpecialComment = { fg = forest.darkgreen }, -- special things inside a comment
        Debug = { fg = forest.red }, -- debugging statements
        -- text that stands out, HTML link
        Underlined = { fg = forest.blue, bg = forest.none, style = 'underline' }, 
        Ignore = { fg = forest.darkgray }, -- left blank, hidden //change
        -- any erroneous construct
        Error = { fg = forest.red, bg = forest.none, style = 'bold,underline' },
        -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Todo = { fg = forest.brightyellow, bg = forest.none, style = 'bold,italic' }, 
        Conceal = { fg = forest.none, bg = forest.darkbrown },


        htmlLink = { fg = forest.blue, style = "underline" },
        htmlH1 = { fg = forest.purple, style = "bold" },
        htmlH2 = { fg = forest.purple, style = "bold" },
        htmlH3 = { fg = forest.purple, style = "bold" },
        htmlH4 = { fg = forest.purplue, style = "bold" },
        htmlH5 = { fg = forest.purple, style = "bold" },
        markdownH1 = { fg = forest.purple, style = "bold" },
        markdownH2 = { fg = forest.purple, style = "bold" },
        markdownH3 = { fg = forest.purple, style = "bold" },
        markdownH1Delimiter = { fg = forest.purple },
        markdownH2Delimiter = { fg = forest.purple },
        markdownH3Delimiter = { fg = forest.purple },
    }

    -- Italic comments
    if vim.g.forest_italic == true then
        syntax.Conditional = { fg = forest.blue, bg = forest.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
        syntax.Keyword = { fg = forest.blue, bg = forest.none, style = 'italic' } -- italic for, do, while, etc.
        syntax.Repeat =	{ fg = forest.blue, bg = forest.none, style = 'italic' } -- italic any other keyword
        syntax.Comment = { fg = forest.green, bg = forest.none, style = 'italic' } -- italic comments
        syntax.Function = { fg = forest.cyan, bg = forest.none, style = 'italic' } -- italic funtion names
        syntax.Identifier = { fg = forest.lightblue, bg = forest.none, style = 'italic' }; -- any variable name
        syntax.String = { fg = forest.brown, bg = forest.none, style= 'italic' } -- any string
    else
        syntax.Comment = {fg = forest.green} -- normal comments
        syntax.Conditional = { fg = forest.blue } -- normal if, then, else, endif, switch, etc.
        syntax.Keyword = { fg = forest.blue } -- normal for, do, while, etc.
        syntax.Repeat =	{ fg = forest.blue } -- normal any other keyword
        syntax.Function = { fg = forest.cyan } -- normal function names
        syntax.Identifier = { fg = forest.lightblue }; -- any variable name
        syntax.String = { fg = forest.brown } -- any string
    end

return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups
    local editor = {
        NormalFloat = { fg = forest.white, bg = forest.float }, -- normal text and background color
        ColorColumn = { fg = forest.none, bg = forest.darkgray }, --  used for the columns set with 'colorcolumn'
        -- placeholder characters substituted for concealed text (see 'conceallevel')
        Conceal = { fg = forest.darkgray },
        Cursor = { fg = forest.white, bg = forest.none, style = 'reverse' }, -- the character under the cursor

        -- like Cursor, but used when in IME mode
        CursorIM = { fg = forest.white, bg = forest.none, style = 'reverse' },
        Directory = { fg = forest.brightblue, bg = forest.none }, -- directory names (and other special names in listings)
        DiffAdd = { fg = forest.cyan, bg = forest.none, style = 'reverse' }, -- diff mode: Added line
        DiffChange = { fg = forest.yellow, bg = forest.none, style = 'reverse' }, --  diff mode: Changed line
        DiffDelete = { fg = forest.red, bg = forest.none, style = 'reverse' }, -- diff mode: Deleted line

        -- diff mode: Changed text within a changed line
        DiffText = { fg = forest.brightyellow, bg = forest.none, style = 'reverse' }, 
        EndOfBuffer = { fg = forest.darkgray },
        ErrorMsg = { fg = forest.none },
        Folded = { fg = forest.forest_3_gui_bright, forest.none, style = 'italic' },
        FoldColumn = { fg = forest.forest7_gui },
        IncSearch = { fg = forest.forest6_gui, bg = forest.forest10_gui },
        LineNr = { fg = forest.forest3_gui_bright },
        CursorLineNr = { fg = forest.forest4_gui },
        MatchParen = { fg = forest.forest15_gui, bg = forest.none, style = 'bold' },
        ModeMsg = { fg = forest.forest4_gui },
        MoreMsg = { fg = forest.forest4_gui },
        NonText = { fg = forest.forest1_gui },
        Pmenu = { fg = forest.forest4_gui, bg = forest.forest2_gui },
        PmenuSel = { fg = forest.forest4_gui, bg = forest.forest10_gui },
        PmenuSbar = { fg = forest.forest4_gui, bg = forest.forest2_gui },
        PmenuThumb = { fg = forest.forest4_gui, bg = forest.forest4_gui },
        Question = { fg = forest.forest14_gui },
        QuickFixLine = { fg = forest.forest4_gui, forest.forest6_gui, style = 'reverse' },
        qfLineNr = { fg = forest.forest4_gui, forest.forest6_gui, style = 'reverse' },
        Search = { fg = forest.forest1_gui, bg = forest.forest6_gui, style = 'reverse' },
        SpecialKey = { fg = forest.forest9_gui },
        SpellBad = { fg = forest.forest11_gui, bg = forest.none, style = 'italic,undercurl' },
        SpellCap = { fg = forest.forest7_gui, bg = forest.none, style = 'italic,undercurl' },
        SpellLocal = { fg = forest.forest8_gui, bg = forest.none, style = 'italic,undercurl' },
        SpellRare = { fg = forest.forest9_gui, bg = forest.none, style = 'italic,undercurl' },
        StatusLine = { fg = forest.forest4_gui, bg = forest.forest2_gui },
        StatusLineNC = { fg = forest.forest4_gui, bg = forest.forest1_gui },
        StatusLineTerm = { fg = forest.forest4_gui, bg = forest.forest2_gui },
        StatusLineTermNC = { fg = forest.forest4_gui, bg = forest.forest1_gui },
        TabLineFill = { fg = forest.forest4_gui },
        TablineSel = { fg = forest.forest8_gui, bg = forest.forest3_gui },
        Tabline = { fg = forest.forest4_gui },
        Title = { fg = forest.forest14_gui, bg = forest.none, style = 'bold' },
        Visual = { fg = forest.none, bg = forest.darkgray },
        VisualNOS = { fg = forest.none, bg = forest.forest1_gui },
        WarningMsg = { fg = forest.brightyellow },
        WildMenu = { fg = forest.forest12_gui, bg = forest.none, style = 'bold' },
        CursorColumn = { fg = forest.none, bg = forest.cursorlinefg },
        CursorLine = { fg = forest.none, bg = forest.cursorlinefg },
        ToolbarLine = { fg = forest.forest4_gui, bg = forest.forest1_gui },
        ToolbarButton = { fg = forest.forest4_gui, bg = forest.none, style = 'bold' },
        NormalMode = { fg = forest.forest4_gui, bg = forest.none, style = 'reverse' },
        InsertMode = { fg = forest.forest14_gui, bg = forest.none, style = 'reverse' },
        ReplacelMode = { fg = forest.forest11_gui, bg = forest.none, style = 'reverse' },
        VisualMode = { fg = forest.forest9_gui, bg = forest.none, style = 'reverse' },
        CommandMode = { fg = forest.forest4_gui, bg = forest.none, style = 'reverse' },
        Warnings = { fg = forest.brightyellow },

        healthError = { fg = forest.red },
        healthSuccess = { fg = forest.cyan },
        healthWarning = { fg = forest.brightyellow },

        -- dashboard
        DashboardShortCut = { fg = forest.forest7_gui },
        DashboardHeader = { fg = forest.forest9_gui },
        DashboardCenter = { fg = forest.forest8_gui },
        DashboardFooter = { fg = forest.forest14_gui, style = "italic" },

        -- BufferLine
        BufferLineIndicatorSelected = { fg = forest.darkbrown },
        BufferLineFill = { bg = forest.darkbrown },

    }

    -- Options:

    --Set transparent background
    if vim.g.forest_disable_background then
        editor.Normal =     { fg = forest.white, bg = forest.none } -- normal text and background color
        editor.SignColumn = { fg = forest.white, bg = forest.none }
    else
        editor.Normal =     { fg = forest.white, bg = forest.darkbrown } -- normal text and background color
        editor.SignColumn = { fg = forest.white, bg = forest.darkbrowm }
    end

    -- Remove window split borders
    if vim.g.forest_borders then
        editor.VertSplit = { fg = forest.forest2_gui }
    else
        editor.VertSplit = { fg = forest.darkbrown }
    end

    return editor
end

theme.loadTerminal = function ()

    vim.g.terminal_color_0 = forest.forest1_gui
    vim.g.terminal_color_1 = forest.red
    vim.g.terminal_color_2 = forest.forest14_gui
    vim.g.terminal_color_3 = forest.forest13_gui
    vim.g.terminal_color_4 = forest.forest9_gui
    vim.g.terminal_color_5 = forest.forest15_gui
    vim.g.terminal_color_6 = forest.forest8_gui
    vim.g.terminal_color_7 = forest.forest5_gui
    vim.g.terminal_color_8 = forest.forest3_gui
    vim.g.terminal_color_9 = forest.forest11_gui
    vim.g.terminal_color_10 = forest.forest14_gui
    vim.g.terminal_color_11 = forest.forest13_gui
    vim.g.terminal_color_12 = forest.forest9_gui
    vim.g.terminal_color_13 = forest.forest15_gui
    vim.g.terminal_color_14 = forest.forest7_gui
    vim.g.terminal_color_15 = forest.forest6_gui

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
        TSAnnotation = { fg = forest.lightblue },
        TSCharacter= { fg = forest.brown },    -- For characters.

         -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstructor = { fg = forest.purple },
        TSConstant = { fg = forest.blue }, -- For constants
        TSFloat = { fg = forest.pink }, -- For floats
        TSNumber = { fg = forest.pink }, -- For all number
        TSString = { fg = forest.brown }, -- For strings.
        TSAttribute = { fg = forest.purple }, -- (unstable) TODO: docs
        TSBoolean = { fg = forest.blue }, -- For booleans.
        TSConstBuiltin = { fg = forest.blue }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro = { fg = forest.blue }, -- For constants that are defined by macros: `NULL` in C.
        TSError = { fg = forest.red }, -- For syntax/parser errors.
        TSException = { fg = forest.blue }, -- For exception related keywords.
        TSField = { fg = forest.white }, -- For fields.
        -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSFuncMacro = { fg = forest.blue },
        -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSInclude = { fg = forest.blue }, 
        TSLabel = { fg = forest.blue }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace = { fg = forest.blue }, -- For identifiers referring to modules and namespaces.
        TSOperator = { fg = forest.white }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = { fg = forest.white }, -- For parameters of a function.
        TSParameterReference = { fg = forest.white }, -- For references to parameters of a function.
        TSProperty = { fg = forest.white }, -- Same as `TSField`.
        TSPunctDelimiter = { fg = forest.white }, -- For delimiters ie: `.`
        TSPunctBracket = { fg = forest.white }, -- For brackets and parens.
        -- For special punctutation that does not fall in the catagories before.
        TSPunctSpecial = { fg = forest.forest8_gui }, 
        TSStringRegex = { fg = forest.brown }, -- For regexes.
        TSStringEscape = { fg = forest.purple }, -- For escape characters within a string.
        TSSymbol = { fg = forest.forest15_gui }, -- For identifiers referring to symbols or atoms.
        TSType = { fg = forest.purple }, -- For types.
        TSTypeBuiltin = { fg = forest.blue }, -- For builtin types.
        TSTag = { fg = forest.purble }, -- Tags like html tag names.
        TSTagDelimiter = { fg = forest.purple }, -- Tag delimiter like `<` `>` `/`
        TSText = { fg = forest.white }, -- For strings consideforest11_gui text in a markup language.
        TSTextReference = { fg = forest.white }, -- FIXME
        TSEmphasis = { fg = forest.white }, -- For text to be represented with emphasis.
        TSUnderline = { fg = forest.white, bg = forest.none, style = 'underline' }, -- For text to be represented with an underline.
        TSTitle = { fg = forest.white, bg = forest.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral = { fg = forest.white }, -- Literal text.
        TSURI = { fg = forest.white }, -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = forest.forest11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

    }

    treesitter.TSComment = { fg = forest.green }
    treesitter.TSConditional = { fg = forest.blue } -- For keywords related to conditionnals.
    treesitter.TSKeyword = { fg = forest.blue } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat = { fg = forest.blue } -- For keywords related to loops.
    treesitter.TSKeywordFunction = { fg = forest.cyan }
    treesitter.TSFunction = { fg = forest.cyan } -- For fuction (calls and definitions).
    treesitter.TSMethod = { fg = forest.cyan } -- For method calls and definitions.
    treesitter.TSFuncBuiltin = { fg = forest.cyan }
    treesitter.TSVariable = { fg = forest.white } -- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin = { fg = forest.lightblue }

    return treesitter

end

theme.loadLSP = function ()
-- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError = { fg = forest.red }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = forest.red }, -- used for "Error" diagnostic signs in sign column
        -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingError = { fg = forest.red }, 
        LspDiagnosticsVirtualTextError = { fg = forest.red }, -- Virtual text "Error"
        -- used to underline "Error" diagnostics
        LspDiagnosticsUnderlineError = { style = 'undercurl', sp = forest.red }, 
        LspDiagnosticsDefaultWarning = { fg = forest.brightyellow }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = forest.brightyellow }, -- used for "Warning" diagnostic signs in sign column
        -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingWarning = { fg = forest.brightyellow }, 
        LspDiagnosticsVirtualTextWarning = { fg = forest.brightyellow }, -- Virtual text "Warning"
        -- used to underline "Warning" diagnostics.
        LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = forest.brightyellow }, 
        LspDiagnosticsDefaultInformation = { fg = forest.white }, -- used for "Information" diagnostic virtual text
        -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsSignInformation = { fg = forest.white },
        -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingInformation = { fg = forest.white }, 
        LspDiagnosticsVirtualTextInformation = { fg = forest.white }, -- Virtual text "Information"
        -- used to underline "Information" diagnostics.
        LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = forest.white }, 
        LspDiagnosticsDefaultHint = { fg = forest.brightyellow  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = forest.brightyellow }, -- used for "Hint" diagnostic signs in sign column
        -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingHint = { fg = forest.brightyellow  }, 
        LspDiagnosticsVirtualTextHint = { fg = forest.brightyellow  }, -- Virtual text "Hint"
        -- used to underline "Hint" diagnostics.
        LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = forest.brown }, 
        LspReferenceText = { fg = forest.white, bg = forest.darkgray }, -- used for highlighting "text" references
        LspReferenceRead = { fg = forest.white, bg = forest.darkgray }, -- used for highlighting "read" references
        LspReferenceWrite = { fg = forest.white, bg = forest.darkgray }, -- used for highlighting "write" references

        DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
        DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
        DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
        DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
        DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
        DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
        DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
        DiagnosticSignError = { link = "LspDiagnosticsSignError" },
        DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
        DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
        DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
        DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
        DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
        DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
        DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
        DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
    }
    return lsp
end

theme.loadPlugins = function()
-- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText = { fg = forest.brightyellow },
        LspTroubleCount = { fg = forest.brightyellow, bg = forest.gray },
        LspTroubleNormal = { fg = forest.white, bg = forest.sidebar },

        -- Diff
        diffAdded = { fg = forest.cyan },
        diffRemoved = { fg = forest.red },
        diffChanged = { fg = forest.brightyellow },
        diffOldFile = { fg = forest.brown },
        diffNewFile = { fg = forest.cyan },
        diffFile = { fg = forest.brightyellow },
        diffLine = { fg = forest.brightyellow },
        diffIndexLine = { fg = forest.white },

                -- Telescope
        TelescopePromptBorder = { fg = forest.yellow },
        TelescopeResultsBorder = { fg = forest.blue },
        TelescopePreviewBorder = { fg = forest.blue },
        TelescopeSelectionCaret = { fg = forest.blue },
        TelescopeSelection = { fg = forest.blue },
        TelescopeMatching = { fg = forest.yellow },

        -- NvimTree
        NvimTreeRootFolder = { fg = forest.white, style = "bold" },
        NvimTreeGitDirty = { fg = forest.gray }, -- change maybe
        NvimTreeGitNew = { fg = forest.brightcyan },
        NvimTreeImageFile = { fg = forest.brightcyan },
        NvimTreeExecFile = { fg = forest.brightmagenta },
        NvimTreeSpecialFile = { fg = forest.brightmagenta , style = "underline" }, -- change maybe
        NvimTreeFolderName = { fg = forest.brightblue },
        NvimTreeEmptyFolderName = { fg = forest.darkgray },
        NvimTreeFolderIcon = { fg = forest.yellow },
        NvimTreeIndentMarker = { fg  = forest.brightblue },
        LspDiagnosticsError = { fg = forest.red },
        LspDiagnosticsWarning = { fg = forest.brightyellow },
        LspDiagnosticsInformation = { fg = forest.white },
        LspDiagnosticsHint = { fg = forest.brightyellow },

        -- WhichKey
        WhichKey = { fg = forest.forest4_gui , style = 'bold'},
        WhichKeyGroup = { fg = forest.forest4_gui },
        WhichKeyDesc = { fg = forest.forest7_gui, style = 'italic' },
        WhichKeySeperator = { fg = forest.forest4_gui },
        WhichKeyFloating = { bg = forest.float },
        WhichKeyFloat = { bg = forest.float },

                   
        -- Cmp
        CmpItemKind = { fg = forest.white },
        CmpItemAbbrMatch = { fg = forest.yellow, style = 'bold' },
        CmpItemAbbrMatchFuzzy = { fg = forest.yellow, style = 'bold' },
        CmpItemAbbr = { fg = forest.white },
        CmpItemMenu = { fg = forest.gray },
                    
        -- Indent Blankline
        IndentBlanklineChar = { fg = forest.darkgray },
        IndentBlanklineContextChar = { fg = forest.purple },

        -- Illuminate
        illuminatedWord = { bg = forest.gray },
        illuminatedCurWord = { bg = forest.gray },
    }
    -- Options:

    -- Disable nvim-tree background
    if vim.g.forest_disable_background then
        plugins.NvimTreeNormal = { fg = forest.white, bg = forest.none }
    else
        plugins.NvimTreeNormal = { fg = forest.white, bg = forest.sidebar }
    end

    if vim.g.forest_enable_sidebar_background then
        plugins.NvimTreeNormal = { fg = forest.white, bg = forest.sidebar }
    else
        plugins.NvimTreeNormal = { fg = white, bg = forest.none }
    end

    return plugins

end

return theme
