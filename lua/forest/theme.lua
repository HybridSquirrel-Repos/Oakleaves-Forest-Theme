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
        TSAnnotation = { fg = forest.forest12_gui },
        TSCharacter= { fg = forest.forest14_gui },    -- For characters.

         -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstructor = { fg = forest.purple },
        TSConstant = { fg = forest.forest13_gui }, -- For constants
        TSFloat = { fg = forest.pink }, -- For floats
        TSNumber = { fg = forest.pink }, -- For all number
        TSString = { fg = forest.brown }, -- For strings.
        TSAttribute = { fg = forest.forest15_gui }, -- (unstable) TODO: docs
        TSBoolean = { fg = forest.blue }, -- For booleans.
        TSConstBuiltin = { fg = forest.blue }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro = { fg = forest.blue }, -- For constants that are defined by macros: `NULL` in C.
        TSError = { fg = forest.red }, -- For syntax/parser errors.
        TSException = { fg = forest.forest15_gui }, -- For exception related keywords.
        TSField = { fg = forest.forest4_gui }, -- For fields.
        -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSFuncMacro = { fg = forest.blue },
        -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSInclude = { fg = forest.blue }, 
        TSLabel = { fg = forest.forest15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace = { fg = forest.blue }, -- For identifiers referring to modules and namespaces.
        TSOperator = { fg = forest.white }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = { fg = forest.forest10_gui }, -- For parameters of a function.
        TSParameterReference = { fg = forest.forest10_gui }, -- For references to parameters of a function.
        TSProperty = { fg = forest.forest10_gui }, -- Same as `TSField`.
        TSPunctDelimiter = { fg = forest.white }, -- For delimiters ie: `.`
        TSPunctBracket = { fg = forest.white }, -- For brackets and parens.
        -- For special punctutation that does not fall in the catagories before.
        TSPunctSpecial = { fg = forest.forest8_gui }, 
        TSStringRegex = { fg = forest.forest7_gui }, -- For regexes.
        TSStringEscape = { fg = forest.forest15_gui }, -- For escape characters within a string.
        TSSymbol = { fg = forest.forest15_gui }, -- For identifiers referring to symbols or atoms.
        TSType = { fg = forest.purple }, -- For types.
        TSTypeBuiltin = { fg = forest.blue }, -- For builtin types.
        TSTag = { fg = forest.purble }, -- Tags like html tag names.
        TSTagDelimiter = { fg = forest.purple }, -- Tag delimiter like `<` `>` `/`
        TSText = { fg = forest.white }, -- For strings consideforest11_gui text in a markup language.
        TSTextReference = { fg = forest.forest15_gui }, -- FIXME
        TSEmphasis = { fg = forest.forest10_gui }, -- For text to be represented with emphasis.
        TSUnderline = { fg = forest.forest4_gui, bg = forest.none, style = 'underline' }, -- For text to be represented with an underline.
        TSTitle = { fg = forest.forest10_gui, bg = forest.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral = { fg = forest.forest4_gui }, -- Literal text.
        TSURI = { fg = forest.forest14_gui }, -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = forest.forest11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

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
        LspDiagnosticsDefaultInformation = { fg = forest.forest10_gui }, -- used for "Information" diagnostic virtual text
        -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsSignInformation = { fg = forest.forest10_gui },
        -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingInformation = { fg = forest.forest10_gui }, 
        LspDiagnosticsVirtualTextInformation = { fg = forest.forest10_gui }, -- Virtual text "Information"
        -- used to underline "Information" diagnostics.
        LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = forest.forest10_gui }, 
        LspDiagnosticsDefaultHint = { fg = forest.forest9_gui  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = forest.forest9_gui  }, -- used for "Hint" diagnostic signs in sign column
        -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingHint = { fg = forest.forest9_gui  }, 
        LspDiagnosticsVirtualTextHint = { fg = forest.forest9_gui  }, -- Virtual text "Hint"
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
        LspTroubleText = { fg = forest.forest4_gui },
        LspTroubleCount = { fg = forest.forest9_gui, bg = forest.forest10_gui },
        LspTroubleNormal = { fg = forest.white, bg = forest.sidebar },

        -- Diff
        diffAdded = { fg = forest.cyan },
        diffRemoved = { fg = forest.red },
        diffChanged = { fg = forest.brightyellow },
        diffOldFile = { fg = forest.yelow },
        diffNewFile = { fg = forest.cyan },
        diffFile = { fg = forest.forest7_gui },
        diffLine = { fg = forest.forest3_gui },
        diffIndexLine = { fg = forest.forest9_gui },

        -- Neogit
        NeogitBranch = { fg = forest.forest10_gui },
        NeogitRemote = { fg = forest.forest9_gui },
        NeogitHunkHeader = { fg = forest.forest8_gui },
        NeogitHunkHeaderHighlight = { fg = forest.forest8_gui, bg = forest.forest1_gui },
        NeogitDiffContextHighlight = { bg = forest.forest1_gui },
        NeogitDiffDeleteHighlight = { fg = forest.forest11_gui, style='reverse' },
        NeogitDiffAddHighlight = { fg = forest.forest14_gui, style='reverse' },

        -- GitGutter
        GitGutterAdd = { fg = forest.cyan }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = forest.brightyellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = forest.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = { fg = forest.cyan }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = forest.cyan }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = forest.cyan }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = forest.brightyellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = forest.brightyellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = forest.brightyellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = forest.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = forest.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = forest.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder = { fg = forest.forest8_gui },
        TelescopeResultsBorder = { fg = forest.blue },
        TelescopePreviewBorder = { fg = forest.forest14_gui },
        TelescopeSelectionCaret = { fg = forest.forest9_gui },
        TelescopeSelection = { fg = forest.blue },
        TelescopeMatching = { fg = forest.forest8_gui },

        -- NvimTree
        NvimTreeRootFolder = { fg = forest.forest7_gui, style = "bold" },
        NvimTreeGitDirty = { fg = forest.forest15_gui },
        NvimTreeGitNew = { fg = forest.forest14_gui },
        NvimTreeImageFile = { fg = forest.forest15_gui },
        NvimTreeExecFile = { fg = forest.forest14_gui },
        NvimTreeSpecialFile = { fg = forest.forest9_gui , style = "underline" },
        NvimTreeFolderName = { fg = forest.forest10_gui },
        NvimTreeEmptyFolderName = { fg = forest.forest1_gui },
        NvimTreeFolderIcon = { fg = forest.forest4_gui },
        NvimTreeIndentMarker = { fg  = forest.forest1_gui },
        LspDiagnosticsError = { fg = forest.forest11_gui },
        LspDiagnosticsWarning = { fg = forest.forest15_gui },
        LspDiagnosticsInformation = { fg = forest.forest10_gui },
        LspDiagnosticsHint = { fg = forest.forest9_gui },

        -- WhichKey
        WhichKey = { fg = forest.forest4_gui , style = 'bold'},
        WhichKeyGroup = { fg = forest.forest4_gui },
        WhichKeyDesc = { fg = forest.forest7_gui, style = 'italic' },
        WhichKeySeperator = { fg = forest.forest4_gui },
        WhichKeyFloating = { bg = forest.float },
        WhichKeyFloat = { bg = forest.float },

        -- LspSaga
        DiagnosticError = { fg = forest.red },
        DiagnosticWarning = { fg = forest.forest15_gui },
        DiagnosticInformation = { fg = forest.forest10_gui },
        DiagnosticHint = { fg = forest.forest9_gui },
        DiagnosticTruncateLine = { fg = forest.forest4_gui },
        LspFloatWinNormal = { bg = forest.forest2_gui },
        LspFloatWinBorder = { fg = forest.forest9_gui },
        LspSagaBorderTitle = { fg = forest.forest8_gui },
        LspSagaHoverBorder = { fg = forest.forest10_gui },
        LspSagaRenameBorder = { fg = forest.forest14_gui },
        LspSagaDefPreviewBorder = { fg = forest.forest14_gui },
        LspSagaCodeActionBorder = { fg = forest.forest7_gui },
        LspSagaFinderSelection = { fg = forest.forest14_gui },
        LspSagaCodeActionTitle = { fg = forest.forest10_gui },
        LspSagaCodeActionContent = { fg = forest.forest9_gui },
        LspSagaSignatureHelpBorder = { fg = forest.forest13_gui },
        ReferencesCount = { fg = forest.forest9_gui },
        DefinitionCount = { fg = forest.forest9_gui },
        DefinitionIcon = { fg = forest.forest7_gui },
        ReferencesIcon = { fg = forest.forest7_gui },
        TargetWord = { fg = forest.forest8_gui },

            -- Sneak
        Sneak = { fg = forest.forest0_gui, bg = forest.forest4_gui },
        SneakScope = { bg = forest.forest1_gui },
                    
        -- Cmp
        CmpItemKind = { fg = forest.forest15_gui },
        CmpItemAbbrMatch = { fg = forest.forest5_gui, style = 'bold' },
        CmpItemAbbrMatchFuzzy = { fg = forest.forest5_gui, style = 'bold' },
        CmpItemAbbr = { fg = forest.forest4_gui},
        CmpItemMenu = { fg = forest.forest14_gui },
                    
        -- Indent Blankline
        IndentBlanklineChar = { fg = forest.purple },
        IndentBlanklineContextChar = { fg = forest.forest10_gui },

        -- Illuminate
        illuminatedWord = { bg = forest.forest3_gui },
        illuminatedCurWord = { bg = forest.forest3_gui },

        -- nvim-dap
        DapBreakpoint = { fg = forest.forest14_gui},
        DapStopped = { fg = forest.forest15_gui},

        -- Hop
        HopNextKey = { fg = forest.forest4_gui, style = 'bold' },
        HopNextKey1 = { fg = forest.forest8_gui, style = 'bold' },
        HopNextKey2 = { fg = forest.forest4_gui},
        HopUnmatched = { fg = forest.forest3_gui },

        -- Fern
        FernBranchText = { fg = forest.forest3_gui_bright},

        -- nvim-ts-rainbow
        rainbowcol1 = { fg = forest.forest15_gui },
        rainbowcol2 = { fg = forest.forest13_gui },
        rainbowcol3 = { fg = forest.forest11_gui },
        rainbowcol4 = { fg = forest.forest7_gui },
        rainbowcol5 = { fg = forest.forest8_gui },
        rainbowcol6 = { fg = forest.forest15_gui },
        rainbowcol7 = { fg = forest.forest13_gui },

        -- lightspeed
        LightspeedLabel = { fg = forest.forest8_gui, style = "bold" },
        LightspeedLabelOverlapped = { fg = forest.forest8_gui, style = "bold,underline" },
        LightspeedLabelDistant = { fg = forest.forest15_gui, style = "bold" },
        LightspeedLabelDistantOverlapped = { fg = forest.forest15_gui, style = "bold,underline" },
        LightspeedShortcut = { fg = forest.forest10_gui, style = "bold" },
        LightspeedShortcutOverlapped = { fg = forest.forest10_gui, style = "bold,underline" },
        LightspeedMaskedChar = { fg = forest.forest4_gui, bg = forest.forest2_gui, style = "bold" },
        LightspeedGreyWash = { fg = forest.forest3_gui_bright },
        LightspeedUnlabeledMatch = { fg = forest.forest4_gui, bg = forest.forest1_gui },
        LightspeedOneCharMatch = { fg = forest.forest8_gui, style = "bold,reverse" },
        LightspeedUniqueChar = { style = "bold,underline" },
        -- LightspeedPendingOpArea = { style = "strikethrough" },
        -- LightspeedPendingChangeOpArea = { style = "strikethrough" },
        -- LightspeedCursor = { fg = forest.forest7_gui, style = "underline,reverse" },
    }
    -- Options:

    -- Disable nvim-tree background
    if vim.g.forest_disable_background then
        plugins.NvimTreeNormal = { fg = forest.forest4_gui, bg = forest.none }
    else
        plugins.NvimTreeNormal = { fg = forest.forest4_gui, bg = forest.sidebar }
    end

    if vim.g.forest_enable_sidebar_background then
        plugins.NvimTreeNormal = { fg = forest.forest4_gui, bg = forest.sidebar }
    else
        plugins.NvimTreeNormal = { fg = forest.forest4_gui, bg = forest.none }
    end

    return plugins

end

return theme
