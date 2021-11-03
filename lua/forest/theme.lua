local forest = require("forest.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
    local syntax = {
        Type = { fg = forest.forest9_gui }, -- int, long, char, etc.
        StorageClass = { fg = forest.forest9_gui }, -- static, register, volatile, etc.
        Structure = { fg = forest.forest9_gui }, -- struct, union, enum, etc.
        Constant = { fg = forest.forest4_gui }, -- any constant
        Character = { fg = forest.forest14_gui }, -- any character constant: 'c', '\n'
        Number = { fg = forest.forest15_gui }, -- a number constant: 5
        Boolean = { fg = forest.forest9_gui }, -- a boolean constant: TRUE, false
        Float = { fg = forest.forest15_gui }, -- a floating point constant: 2.3e10
        Statement = { fg = forest.forest9_gui }, -- any statement
        Label = { fg = forest.forest9_gui }, -- case, default, etc.
        Operator = { fg = forest.forest9_gui }, -- sizeof", "+", "*", etc.
        Exception = { fg = forest.forest9_gui }, -- try, catch, throw
        PreProc = { fg = forest.forest9_gui }, -- generic Preprocessor
        Include = { fg = forest.forest9_gui }, -- preprocessor #include
        Define = { fg = forest.forest9_gui }, -- preprocessor #define
        Macro = { fg = forest.forest9_gui }, -- same as Define
        Typedef = { fg = forest.forest9_gui }, -- A typedef
        PreCondit = { fg = forest.forest13_gui }, -- preprocessor #if, #else, #endif, etc.
        Special = { fg = forest.forest4_gui }, -- any special symbol
        SpecialChar = { fg = forest.forest13_gui }, -- special character in a constant
        Tag = { fg = forest.forest4_gui }, -- you can use CTRL-] on this
        Delimiter = { fg = forest.forest6_gui }, -- character that needs attention like , or .
        SpecialComment = { fg = forest.forest8_gui }, -- special things inside a comment
        Debug = { fg = forest.forest11_gui }, -- debugging statements
        -- text that stands out, HTML link
        Underlined = { fg = forest.forest14_gui, bg = forest.none, style = 'underline' }, 
        Ignore = { fg = forest.forest1_gui }, -- left blank, hidden
        -- any erroneous construct
        Error = { fg = forest.forest11_gui, bg = forest.none, style = 'bold,underline' },
        -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Todo = { fg = forest.forest13_gui, bg = forest.none, style = 'bold,italic' }, 
        Conceal = { fg = forest.none, bg = forest.forest0_gui },


        htmlLink = { fg = forest.forest14_gui, style = "underline" },
        htmlH1 = { fg = forest.forest8_gui, style = "bold" },
        htmlH2 = { fg = forest.forest11_gui, style = "bold" },
        htmlH3 = { fg = forest.forest14_gui, style = "bold" },
        htmlH4 = { fg = forest.forest15_gui, style = "bold" },
        htmlH5 = { fg = forest.forest9_gui, style = "bold" },
        markdownH1 = { fg = forest.forest8_gui, style = "bold" },
        markdownH2 = { fg = forest.forest11_gui, style = "bold" },
        markdownH3 = { fg = forest.forest14_gui, style = "bold" },
        markdownH1Delimiter = { fg = forest.forest8_gui },
        markdownH2Delimiter = { fg = forest.forest11_gui },
        markdownH3Delimiter = { fg = forest.forest14_gui },
    }

    -- Italic comments
    if vim.g.forest_italic == true then
        syntax.Conditional = { fg = forest.forest9_gui, bg = forest.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
        syntax.Keyword = { fg = forest.forest9_gui, bg = forest.none, style = 'italic' } -- italic for, do, while, etc.
        syntax.Repeat =	{ fg = forest.forest9_gui, bg = forest.none, style = 'italic' } -- italic any other keyword
        syntax.Comment = { fg = forest.forest3_gui_bright, bg = forest.none, style = 'italic' } -- italic comments
        syntax.Function = { fg = forest.forest8_gui, bg = forest.none, style = 'italic' } -- italic funtion names
        syntax.Identifier = { fg = forest.forest9_gui, bg = forest.none, style = 'italic' }; -- any variable name
        syntax.String = { fg = forest.forest14_gui, bg = forest.none, style= 'italic' } -- any string
    else
        syntax.Comment = {fg = forest.forest3_gui_bright} -- normal comments
        syntax.Conditional = { fg = forest.forest9_gui } -- normal if, then, else, endif, switch, etc.
        syntax.Keyword = { fg = forest.forest9_gui } -- normal for, do, while, etc.
        syntax.Repeat =	{ fg = forest.forest9_gui } -- normal any other keyword
        syntax.Function = { fg = forest.forest8_gui} -- normal function names
        syntax.Identifier = { fg = forest.forest9_gui}; -- any variable name
        syntax.String = { fg = forest.forest14_gui } -- any string
    end

return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups
    local editor = {
        NormalFloat = { fg = forest.forest4_gui, bg = forest.float }, -- normal text and background color
        ColorColumn = { fg = forest.none, bg = forest.forest1_gui }, --  used for the columns set with 'colorcolumn'
        -- placeholder characters substituted for concealed text (see 'conceallevel')
        Conceal = { fg = forest.forest1_gui },
        Cursor = { fg = forest.forest4_gui, bg = forest.none, style = 'reverse' }, -- the character under the cursor

        -- like Cursor, but used when in IME mode
        CursorIM = { fg = forest.forest5_gui, bg = forest.none, style = 'reverse' },
        Directory = { fg = forest.forest7_gui, bg = forest.none }, -- directory names (and other special names in listings)
        DiffAdd = { fg = forest.forest14_gui, bg = forest.none, style = 'reverse' }, -- diff mode: Added line
        DiffChange = { fg = forest.forest12_gui, bg = forest.none, style = 'reverse' }, --  diff mode: Changed line
        DiffDelete = { fg = forest.forest11_gui, bg = forest.none, style = 'reverse' }, -- diff mode: Deleted line

        -- diff mode: Changed text within a changed line
        DiffText = { fg = forest.forest15_gui, bg = forest.none, style = 'reverse' }, 
        EndOfBuffer = { fg = forest.forest1_gui },
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
        Visual = { fg = forest.none, bg = forest.forest1_gui },
        VisualNOS = { fg = forest.none, bg = forest.forest1_gui },
        WarningMsg = { fg = forest.forest15_gui },
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
        Warnings = { fg = forest.forest15_gui },

        healthError = { fg = forest.forest11_gui },
        healthSuccess = { fg = forest.forest14_gui },
        healthWarning = { fg = forest.forest15_gui },

        -- dashboard
        DashboardShortCut = { fg = forest.forest7_gui },
        DashboardHeader = { fg = forest.forest9_gui },
        DashboardCenter = { fg = forest.forest8_gui },
        DashboardFooter = { fg = forest.forest14_gui, style = "italic" },

        -- BufferLine
        BufferLineIndicatorSelected = { fg = forest.forest0_gui },
        BufferLineFill = { bg = forest.forest0_gui },

    }

    -- Options:

    --Set transparent background
    if vim.g.forest_disable_background then
        editor.Normal =     { fg = forest.forest4_gui, bg = forest.none } -- normal text and background color
        editor.SignColumn = { fg = forest.forest4_gui, bg = forest.none }
    else
        editor.Normal =     { fg = forest.forest4_gui, bg = forest.forest0_gui } -- normal text and background color
        editor.SignColumn = { fg = forest.forest4_gui, bg = forest.forest0_gui }
    end

    -- Remove window split borders
    if vim.g.forest_borders then
        editor.VertSplit = { fg = forest.forest2_gui }
    else
        editor.VertSplit = { fg = forest.forest0_gui }
    end

    return editor
end

theme.loadTerminal = function ()

    vim.g.terminal_color_0 = forest.forest1_gui
    vim.g.terminal_color_1 = forest.forest11_gui
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
        TSConstructor = { fg = forest.forest9_gui },
        TSConstant = { fg = forest.forest13_gui }, -- For constants
        TSFloat = { fg = forest.forest15_gui }, -- For floats
        TSNumber = { fg = forest.forest15_gui }, -- For all number
        TSString = { fg = forest.forest14_gui }, -- For strings.
        TSAttribute = { fg = forest.forest15_gui }, -- (unstable) TODO: docs
        TSBoolean = { fg = forest.forest9_gui }, -- For booleans.
        TSConstBuiltin = { fg = forest.forest7_gui }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro = { fg = forest.forest7_gui }, -- For constants that are defined by macros: `NULL` in C.
        TSError = { fg = forest.forest11_gui }, -- For syntax/parser errors.
        TSException = { fg = forest.forest15_gui }, -- For exception related keywords.
        TSField = { fg = forest.forest4_gui }, -- For fields.
        -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSFuncMacro = { fg = forest.forest7_gui },
        -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSInclude = { fg = forest.forest9_gui }, 
        TSLabel = { fg = forest.forest15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace = { fg = forest.forest4_gui}, -- For identifiers referring to modules and namespaces.
        TSOperator = { fg = forest.forest9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = { fg = forest.forest10_gui }, -- For parameters of a function.
        TSParameterReference = { fg = forest.forest10_gui }, -- For references to parameters of a function.
        TSProperty = { fg = forest.forest10_gui }, -- Same as `TSField`.
        TSPunctDelimiter = { fg = forest.forest8_gui }, -- For delimiters ie: `.`
        TSPunctBracket = { fg = forest.forest8_gui }, -- For brackets and parens.
        -- For special punctutation that does not fall in the catagories before.
        TSPunctSpecial = { fg = forest.forest8_gui }, 
        TSStringRegex = { fg = forest.forest7_gui }, -- For regexes.
        TSStringEscape = { fg = forest.forest15_gui }, -- For escape characters within a string.
        TSSymbol = { fg = forest.forest15_gui }, -- For identifiers referring to symbols or atoms.
        TSType = { fg = forest.forest9_gui}, -- For types.
        TSTypeBuiltin = { fg = forest.forest9_gui}, -- For builtin types.
        TSTag = { fg = forest.forest4_gui }, -- Tags like html tag names.
        TSTagDelimiter = { fg = forest.forest15_gui }, -- Tag delimiter like `<` `>` `/`
        TSText = { fg = forest.forest4_gui }, -- For strings consideforest11_gui text in a markup language.
        TSTextReference = { fg = forest.forest15_gui }, -- FIXME
        TSEmphasis = { fg = forest.forest10_gui }, -- For text to be represented with emphasis.
        TSUnderline = { fg = forest.forest4_gui, bg = forest.none, style = 'underline' }, -- For text to be represented with an underline.
        TSTitle = { fg = forest.forest10_gui, bg = forest.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral = { fg = forest.forest4_gui }, -- Literal text.
        TSURI = { fg = forest.forest14_gui }, -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = forest.forest11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

    }

    treesitter.TSComment = { fg = forest.forest3_gui_bright }
    treesitter.TSConditional = { fg = forest.forest9_gui } -- For keywords related to conditionnals.
    treesitter.TSKeyword = { fg = forest.forest9_gui } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat = { fg = forest.forest9_gui } -- For keywords related to loops.
    treesitter.TSKeywordFunction = { fg = forest.forest8_gui }
    treesitter.TSFunction = { fg = forest.forest8_gui } -- For fuction (calls and definitions).
    treesitter.TSMethod = { fg = forest.forest7_gui } -- For method calls and definitions.
    treesitter.TSFuncBuiltin = { fg = forest.forest8_gui }
    treesitter.TSVariable = { fg = forest.forest4_gui } -- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin = { fg = forest.forest4_gui }

    return treesitter

end

theme.loadLSP = function ()
-- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError = { fg = forest.forest11_gui }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = forest.forest11_gui }, -- used for "Error" diagnostic signs in sign column
        -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingError = { fg = forest.forest11_gui }, 
        LspDiagnosticsVirtualTextError = { fg = forest.forest11_gui }, -- Virtual text "Error"
        -- used to underline "Error" diagnostics
        LspDiagnosticsUnderlineError = { style = 'undercurl', sp = forest.forest11_gui }, 
        LspDiagnosticsDefaultWarning = { fg = forest.forest15_gui}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = forest.forest15_gui}, -- used for "Warning" diagnostic signs in sign column
        -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingWarning = { fg = forest.forest15_gui}, 
        LspDiagnosticsVirtualTextWarning = { fg = forest.forest15_gui}, -- Virtual text "Warning"
        -- used to underline "Warning" diagnostics.
        LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = forest.forest15_gui }, 
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
        LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = forest.forest10_gui }, 
        LspReferenceText = { fg = forest.forest4_gui, bg = forest.forest1_gui }, -- used for highlighting "text" references
        LspReferenceRead = { fg = forest.forest4_gui, bg = forest.forest1_gui }, -- used for highlighting "read" references
        LspReferenceWrite = { fg = forest.forest4_gui, bg = forest.forest1_gui }, -- used for highlighting "write" references

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
        LspTroubleNormal = { fg = forest.forest4_gui, bg = forest.sidebar },

        -- Diff
        diffAdded = { fg = forest.forest14_gui },
        diffRemoved = { fg = forest.forest11_gui },
        diffChanged = { fg = forest.forest15_gui },
        diffOldFile = { fg = forest.yelow },
        diffNewFile = { fg = forest.forest12_gui },
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
        GitGutterAdd = { fg = forest.forest14_gui }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = forest.forest15_gui }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = forest.forest11_gui }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = { fg = forest.forest14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = forest.forest14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = forest.forest14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = forest.forest15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = forest.forest15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = forest.forest15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = forest.forest11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = forest.forest11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = forest.forest11_gui }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder = { fg = forest.forest8_gui },
        TelescopeResultsBorder = { fg = forest.forest9_gui },
        TelescopePreviewBorder = { fg = forest.forest14_gui },
        TelescopeSelectionCaret = { fg = forest.forest9_gui },
        TelescopeSelection = { fg = forest.forest9_gui },
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
        DiagnosticError = { fg = forest.forest11_gui },
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
        IndentBlanklineChar = { fg = forest.forest3_gui },
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
