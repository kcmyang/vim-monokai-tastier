" Vim color file
"
" Author: Marco Yang <marcoyang123@gmail.com>

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vim-monokai-tasty"

" User Options
if !exists("g:vim_monokai_tasty_italic")
    let g:vim_monokai_tasty_italic = 0
endif

if g:vim_monokai_tasty_italic
  let s:italic = { "cterm": "italic", "gui": "italic" }
else
  let s:italic = { "cterm": "NONE", "gui": "NONE" }
endif

let s:red = { "cterm": 204, "gui": "#ff6188" }
let s:orange = { "cterm": 209, "gui": "#ff9867" }
let s:yellow = { "cterm": 221, "gui": "#ffd866" }
let s:green = { "cterm": 150, "gui": "#a9dc76" }
let s:cyan = { "cterm": 116, "gui": "#78dce8" }
let s:magenta = { "cterm": 147, "gui": "#ab9df2" }

" Search colours. Specifically not in the monokai palette so that they will
" stand out.
let s:black = { "cterm": 0, "gui": "#000000" }
let s:bright_yellow = { "cterm": 11, "gui": "yellow" }

" Monochrome in order light -> dark
let s:white = { "cterm": 231, "gui": "fcfcfa" }
let s:light_grey = { "cterm": 250, "gui": "#bcbcbc" }
let s:grey = { "cterm": 245, "gui": "#8a8a8a" }
let s:dark_grey = { "cterm": 59, "gui": "#5f5f5f" }
let s:darker_grey = { "cterm": 238, "gui": "#444444" }
let s:light_charcoal = { "cterm": 238, "gui": "#2b2b2b" }
let s:charcoal = { "cterm": 235, "gui": "#222222" }

" Git diff colours.
let s:danger = { "cterm": 197, "gui": "#ff005f" }
let s:olive = { "cterm": 64, "gui": "#5f8700" }
let s:dark_red = { "cterm": 88, "gui": "#870000" }
let s:blood_red = { "cterm": 52, "gui": "#5f0000" }
let s:dark_green = { "cterm": 22, "gui": "#005f00" }
let s:bright_blue = { "cterm": 33, "gui": "#0087ff" }
let s:purple_slate = { "cterm": 60, "gui": "#5f5f87" }

let s:none = { "cterm": "NONE", "gui": "NONE" }
let s:bold = { "cterm": "bold", "gui": "bold" }
let s:underline = { "cterm": "underline", "gui": "underline" }
let s:bold_underline = { "cterm": "bold,underline", "gui": "bold,underline" }

function! Highlight(group, fg, bg, style)
  exec "hi " . a:group
        \ . " ctermfg=" . a:fg["cterm"]
        \ . " ctermbg=" . a:bg["cterm"]
        \ . " cterm=" . a:style["cterm"]
        \ . " guifg=" . a:fg["gui"]
        \ . " guibg=" . a:bg["gui"]
        \ . " gui=" . a:style["gui"]
endfunction

call Highlight("Normal", s:white, s:charcoal, s:none)

call Highlight("Cursor", s:charcoal, s:cyan, s:none)
call Highlight("Special", s:magenta, s:none, s:none)
call Highlight("Title", s:white, s:none, s:bold)

call Highlight("Error", s:white, s:danger, s:none)
call Highlight("ErrorMsg", s:white, s:danger, s:none)
call Highlight("WarningMsg", s:white, s:danger, s:none)
call Highlight("SpellBad", s:white, s:danger, s:none)
call Highlight("SpellRare", s:white, s:danger, s:none)
call Highlight("SpellCap", s:charcoal, s:orange, s:italic)
call Highlight("SpellLocal", s:charcoal, s:orange, s:italic)

call Highlight("CursorLineNR", s:yellow, s:none, s:none)

call Highlight("CursorColumn", s:none, s:darker_grey, s:none)
call Highlight("ColorColumn", s:none, s:light_charcoal, s:none)
call Highlight("Conceal", s:none, s:none, s:none)
call Highlight("CursorLine", s:none, s:darker_grey, s:none)
call Highlight("Type", s:none, s:none, s:none)

" quickfix window
call Highlight("qfFileName", s:magenta, s:none, s:none)
call Highlight("qfLineNr", s:cyan, s:none, s:none)
call Highlight("qfSeparator", s:light_grey, s:none, s:none)
call Highlight("QuickFixLine", s:green, s:light_charcoal, s:bold)

call Highlight("Visual", s:none, s:dark_grey, s:none)
call Highlight("TabLine", s:light_grey, s:dark_grey, s:underline)
call Highlight("Whitespace", s:dark_grey, s:none, s:none)

call Highlight("TabLineSel", s:none, s:charcoal, s:bold)

call Highlight("SignColumn", s:none, s:none, s:none)
call Highlight("NonText", s:darker_grey, s:none, s:none)
call Highlight("TabLineFill", s:none, s:darker_grey, s:none)
call Highlight("LineNr", s:dark_grey, s:none, s:none)
call Highlight("VertSplit", s:darker_grey, s:charcoal, s:none)
call Highlight("StatusLine", s:white, s:dark_grey, s:none)
call Highlight("StatusLineNC", s:light_grey, s:darker_grey, s:none)

call Highlight("Exception", s:red, s:none, s:bold)
call Highlight("MatchParen", s:red, s:none, s:bold_underline)
call Highlight("Include", s:red, s:none, s:none)
call Highlight("Conditional", s:red, s:none, s:none)
call Highlight("Define", s:red, s:none, s:none)
call Highlight("Debug", s:red, s:none, s:none)
call Highlight("Delimiter", s:red, s:none, s:none)
call Highlight("Keyword", s:red, s:none, s:none)
call Highlight("Macro", s:red, s:none, s:none)
call Highlight("Operator", s:red, s:none, s:none)
call Highlight("PreProc", s:red, s:none, s:none)
call Highlight("Statement", s:red, s:none, s:none)
call Highlight("Repeat", s:red, s:none, s:none)

call Highlight("diffChange", s:white, s:purple_slate, s:none)
call Highlight("diffText", s:white, s:bright_blue, s:bold)
call Highlight("diffDelete", s:dark_red, s:blood_red, s:none)
call Highlight("diffAdd", s:white, s:dark_green, s:none)
call Highlight("diffAdded", s:green, s:none, s:none)
call Highlight("diffRemoved", s:red, s:none, s:none)
call Highlight("diffFile", s:white, s:none, s:bold)
call Highlight("diffLine", s:magenta, s:none, s:bold)
call Highlight("diffIndexLine", s:magenta, s:none, s:bold)
call Highlight("diffSubname", s:yellow, s:none, s:none)
call Highlight("gitcommitHeader", s:cyan, s:none, s:none)
call Highlight("gitcommitSelectedFile", s:orange, s:none, s:none)
call Highlight("gitcommitSummary", s:white, s:none, s:none)
call Highlight("gitcommitOverflow", s:red, s:none, s:none)

call Highlight("SpecialKey", s:dark_grey, s:darker_grey, s:none)
call Highlight("IncSearch", s:black, s:bright_yellow, s:bold)
call Highlight("Search", s:black, s:bright_yellow, s:bold)

call Highlight("Identifier", s:cyan, s:none, s:none)
call Highlight("Question", s:cyan, s:none, s:none)
call Highlight("StorageClass", s:cyan, s:none, s:italic)
call Highlight("Structure", s:cyan, s:none, s:none)

call Highlight("Function", s:green, s:none, s:none)

call Highlight("Constant", s:magenta, s:none, s:none)
call Highlight("Directory", s:magenta, s:none, s:none)
call Highlight("Tag", s:magenta, s:none, s:none)
call Highlight("Boolean", s:magenta, s:none, s:none)
call Highlight("Character", s:magenta, s:none, s:none)
call Highlight("Float", s:magenta, s:none, s:none)
call Highlight("Number", s:magenta, s:none, s:none)
call Highlight("jsFutureKeys", s:magenta, s:none, s:none)

call Highlight("Folded", s:grey, s:none, s:none)
call Highlight("FoldColumn", s:light_grey, s:none, s:none)
call Highlight("Comment", s:grey, s:none, s:italic)

call Highlight("Label", s:yellow, s:none, s:none)
call Highlight("String", s:yellow, s:none, s:none)

call Highlight("Todo", s:yellow, s:dark_grey, s:bold)
call Highlight("Underlined", s:none, s:none, s:underline)

call Highlight("Pmenu", s:cyan, s:darker_grey, s:none)
call Highlight("PmenuSel", s:yellow, s:dark_grey, s:none)
call Highlight("PmenuSbar", s:none, s:grey, s:none)
call Highlight("PmenuThumb", s:dark_grey, s:white, s:none)

call Highlight("MoreMsg", s:green, s:none, s:none)

" Javascript syntax overwrites from vim-javascript plugin
syntax region  jsObject             contained matchgroup=jsObjectBraces        start=/{/  end=/}/  contains=jsObjectKey,jsObjectKeyString,jsObjectKeyComputed,jsObjectShorthandProp,jsObjectSeparator,jsObjectFuncName,jsObjectMethodType,jsGenerator,jsComment,jsObjectStringKey,jsSpreadExpression,jsTemplateString,jsDecorator,jsAsyncKeyword extend fold

" Javascript colour highlighting rules
call Highlight("Noise", s:red, s:none, s:none)
call Highlight("jsParensIfElse", s:white, s:none, s:none)
call Highlight("jsParensRepeat", s:white, s:none, s:none)
call Highlight("jsParensSwitch", s:white, s:none, s:none)
call Highlight("jsParensCatch", s:white, s:none, s:none)

call Highlight("jsArrowFunction", s:cyan, s:none, s:none)
call Highlight("jsArrowFuncArgs", s:orange, s:none, s:italic)

call Highlight("jsBrackets", s:white, s:none, s:none)
call Highlight("jsBraces", s:white, s:none, s:none)
call Highlight("jsFuncBraces", s:white, s:none, s:none)
call Highlight("jsClassBraces", s:white, s:none, s:none)
call Highlight("jsIfElseBraces", s:white, s:none, s:none)

call Highlight("jsTryCatchBraces", s:white, s:none, s:none)
call Highlight("jsModuleBraces", s:white, s:none, s:none)
call Highlight("jsObjectBraces", s:white, s:none, s:none)
call Highlight("jsFinallyBraces", s:white, s:none, s:none)
call Highlight("jsRepeatBraces", s:white, s:none, s:none)
call Highlight("jsSwitchBraces", s:white, s:none, s:none)
call Highlight("jsTemplateBraces", s:magenta, s:none, s:none)

call Highlight("jsDestructuringBraces", s:white, s:none, s:none)
call Highlight("jsFuncName", s:green, s:none, s:none)
call Highlight("jsFuncCall", s:cyan, s:none, s:none)
call Highlight("jsClassFuncName", s:green, s:none, s:none)
call Highlight("jsArguments", s:orange, s:none, s:italic)
call Highlight("jsFuncArgs", s:orange, s:none, s:italic)
call Highlight("jsClassKeyword", s:cyan, s:none, s:italic)

call Highlight("jsThis", s:orange, s:none, s:italic)
call Highlight("jsUndefined", s:magenta, s:none, s:none)
call Highlight("jsNull", s:magenta, s:none, s:none)
call Highlight("jsParens", s:white, s:none, s:none)
call Highlight("jsFuncParens", s:white, s:none, s:none)
call Highlight("jsGlobalObjects", s:cyan, s:none, s:none)
call Highlight("jsFunction", s:cyan, s:none, s:italic)
call Highlight("jsClassMethodType", s:cyan, s:none, s:italic)
call Highlight("jsObjectKey", s:white, s:none, s:none)
call Highlight("jsBlockLabel", s:white, s:none, s:none)
call Highlight("jsObjectColon", s:red, s:none, s:none)
call Highlight("jsObjectSeparator", s:magenta, s:none, s:none)
call Highlight("jsNoise", s:white, s:none, s:none)
call Highlight("jsGlobalNodeObjects", s:red, s:none, s:none)

call Highlight("EcmaScriptTemplateStrings", s:yellow, s:none, s:italic)

hi def link jsComment              Comment
hi def link jsEnvComment           Comment
hi def link jsCommentTodo          Todo
hi def link jsString               String
hi def link jsObjectKeyString      String
hi def link jsTemplateString       String
hi def link jsObjectStringKey      String
hi def link jsClassStringKey       String
hi def link jsStorageClass         StorageClass
hi def link jsNumber               Number
hi def link jsImport               Include
hi def link jsExport               Include
hi def link jsModuleComma          Operator

hi def link jsTaggedTemplate       StorageClass
hi def link jsTernaryIfOperator    Operator
hi def link jsRegexpString         String
hi def link jsRegexpBoundary       SpecialChar
hi def link jsRegexpQuantifier     SpecialChar
hi def link jsRegexpOr             Conditional
hi def link jsRegexpMod            SpecialChar
hi def link jsRegexpBackRef        SpecialChar
hi def link jsRegexpGroup          String

hi def link jsRegexpCharClass      Character
hi def link jsCharacter            Character
hi def link jsPrototype            Special
hi def link jsConditional          Conditional
hi def link jsBranch               Conditional
hi def link jsLabel                Label
hi def link jsReturn               Statement
hi def link jsRepeat               Repeat
hi def link jsDo                   Repeat
hi def link jsStatement            Statement
hi def link jsException            Exception
hi def link jsTry                  Exception
hi def link jsFinally              Exception
hi def link jsCatch                Exception
hi def link jsAsyncKeyword         Keyword
hi def link jsForAwait             Keyword
hi def link jsObjectFuncName       Function
hi def link jsError                Error
hi def link jsParensError          Error
hi def link jsOperatorKeyword      jsOperator
hi def link jsOperator             Operator
hi def link jsOf                   Operator
hi def link jsExtendsKeyword       Keyword
hi def link jsSuper                Constant
hi def link jsNan                  Number
hi def link jsFloat                Float
hi def link jsBooleanTrue          Boolean
hi def link jsBooleanFalse         Boolean
hi def link jsDot                  Noise
hi def link jsClassNoise           Noise
hi def link jsGenerator            jsFunction

hi def link jsSpecial              Special
hi def link jsExceptions           Constant
hi def link jsBuiltins             Constant
hi def link jsExportDefault        StorageClass
hi def link jsExportDefaultGroup   jsExportDefault
hi def link jsModuleAs             Include
hi def link jsModuleAsterisk       Noise
hi def link jsFrom                 Include
hi def link jsDecorator            Special
hi def link jsDecoratorFunction    Function
hi def link jsParensDecorator      jsParens
hi def link jsFuncArgOperator      jsFuncArgs
hi def link jsClassProperty        jsObjectKey
hi def link jsObjectShorthandProp  jsObjectKey
hi def link jsSpreadOperator       Operator
hi def link jsRestOperator         Operator
hi def link jsRestExpression       jsFuncArgs
hi def link jsSwitchColon          Noise
hi def link jsObjectMethodType     Type
hi def link jsClassDefinition      jsFuncName
hi def link jsBlockLabel           Identifier
hi def link jsBlockLabelKey        jsBlockLabel
hi def link jsDestructuringProperty   jsFuncArgs
hi def link jsDestructuringAssignment jsObjectKey
hi def link jsDestructuringNoise      Noise
hi def link jsCommentFunction      jsComment
hi def link jsCommentClass         jsComment
hi def link jsCommentIfElse        jsComment
hi def link jsCommentRepeat        jsComment
hi def link jsDomErrNo             Constant
hi def link jsDomNodeConsts        Constant
hi def link jsDomElemAttrs         Label
hi def link jsDomElemFuncs         PreProc
hi def link jsHtmlEvents           Special
hi def link jsHtmlElemAttrs        Label
hi def link jsHtmlElemFuncs        PreProc
hi def link jsCssStyles            Label

" HTML
call Highlight("htmlTag", s:white, s:none, s:none)

" JSX highlighting
call Highlight("jsxTagName", s:magenta, s:none, s:none)
call Highlight("jsxComponentName", s:cyan, s:none, s:none)
call Highlight("jsxEqual", s:red, s:none, s:none)
call Highlight("jsxPunct", s:grey, s:none, s:none)
call Highlight("jsxCloseString", s:grey, s:none, s:none)
call Highlight("jsxAttrib", s:white, s:none, s:italic)

" Typescript
call Highlight("typescriptNull", s:magenta, s:none, s:none)
call Highlight("typescriptBraces", s:magenta, s:none, s:none)
call Highlight("typescriptFuncKeyword", s:cyan, s:none, s:italic)

" GraphQL
call Highlight("graphqlStructure", s:red, s:none, s:none)
call Highlight("graphqlBraces", s:white, s:none, s:none)
call Highlight("graphqlConstant", s:white, s:none, s:none)
call Highlight("graphqlType", s:magenta, s:none, s:none)

" vim
call Highlight("vimParenSep", s:white, s:none, s:bold)
call Highlight("vimOperParen", s:cyan, s:none, s:italic)
call Highlight("vimUserFunc", s:magenta, s:none, s:none)
call Highlight("vimFunction", s:orange, s:none, s:none)

" XML highlighting.
hi def link xmlTodo   Todo
call Highlight("xmlTag", s:cyan, s:none, s:none)
call Highlight("xmlTagName", s:cyan, s:none, s:none)
call Highlight("xmlEndTag", s:cyan, s:none, s:none)
call Highlight("xmlEqual", s:red, s:none, s:none)

" JSON highlighting
call Highlight("jsonKeyword", s:cyan, s:none, s:none)
call Highlight("jsonString", s:yellow, s:none, s:none)

" Clojure highlighting
call Highlight("clojureParen", s:white, s:none, s:none)
call Highlight("clojureDefine", s:cyan, s:none, s:italic)
call Highlight("clojureMacro", s:cyan, s:none, s:none)

" R language
call Highlight("rFunction", s:cyan, s:none, s:none)

" NERDTree highlighting
call Highlight("NERDTreeClosable", s:yellow, s:none, s:none)
call Highlight("NERDTreeOpenable", s:yellow, s:none, s:none)
call Highlight("NERDTreeDirSlash", s:cyan, s:none, s:none)
call Highlight("NERDTreeFile", s:none, s:none, s:none)

" Ruby
call Highlight("rubyStringDelimiter", s:yellow, s:none, s:none)

" Calendar
call Highlight("CalNavi", s:cyan, s:none, s:bold_underline)
call Highlight("CalToday", s:red, s:none, s:bold)
call Highlight("CalSaturday", s:magenta, s:none, s:none)
call Highlight("CalSunday", s:magenta, s:none, s:none)
call Highlight("CalHeader", s:green, s:none, s:none)
call Highlight("CalRuler", s:grey, s:darker_grey, s:bold)

" Markdown https://github.com/tpope/vim-markdown/
call Highlight("markdownCode", s:light_grey, s:none, s:bold)
call Highlight("markdownCodeDelimiter", s:yellow, s:none, s:none)

" Markdown https://github.com/plasticboy/vim-markdown
call Highlight("mkdHeading", s:red, s:none, s:none)
call Highlight("mkdURL", s:magenta, s:none, s:none)
call Highlight("mkdCode", s:orange, s:none, s:none)
call Highlight("mkdCodeStart", s:green, s:none, s:none)
call Highlight("mkdCodeEnd", s:green, s:none, s:none)
call Highlight("mkdDelimiter", s:cyan, s:none, s:none)

" Vimwiki
call Highlight("VimwikiDelText", s:grey, s:none, s:none)
call Highlight("VimwikiHeaderChar", s:red, s:none, s:bold)
call Highlight("VimwikiHeader1", s:white, s:none, s:bold)
call Highlight("VimwikiHeader2", s:white, s:none, s:bold)
call Highlight("VimwikiHeader3", s:white, s:none, s:bold)
call Highlight("VimwikiHeader4", s:white, s:none, s:bold)
call Highlight("VimwikiHeader5", s:white, s:none, s:bold)
call Highlight("VimwikiHeader6", s:white, s:none, s:bold)
call Highlight("VimwikiPre", s:green, s:none, s:bold)
call Highlight("VimwikiCode", s:magenta, s:none, s:none)
call Highlight("VimwikiCodeChar", s:magenta, s:none, s:none)
call Highlight("VimwikiBoldChar", s:none, s:none, s:none)
call Highlight("VimwikiItalicChar", s:none, s:none, s:none)

" GitGutter
call Highlight("GitGutterAdd", s:green, s:none, s:none)
call Highlight("GitGutterChange", s:cyan, s:none, s:none)
call Highlight("GitGutterDelete", s:red, s:none, s:none)
call Highlight("GitGutterChangeDelete", s:orange, s:none, s:none)

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
