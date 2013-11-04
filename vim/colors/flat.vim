" Flat theme for terminal vim
" Timothée Poisot < t.poisot@gmail.com >
" Based on Base16 Default (https://github.com/chriskempson/base16)

" GUI color definitions
let s:gui00 = "151515"
let s:gui01 = "202020"
let s:gui02 = "303030"
let s:gui03 = "505050"
let s:gui04 = "b0b0b0"
let s:gui05 = "d0d0d0"
let s:gui06 = "e0e0e0"
let s:gui07 = "f5f5f5"
let s:gui08 = "ac4142"
let s:gui09 = "d28445"
let s:gui0A = "f4bf75"
let s:gui0B = "90a959"
let s:gui0C = "75b5aa"
let s:gui0D = "6a9fb5"
let s:gui0E = "aa759f"
let s:gui0F = "8f5536"

" Terminal color definitions

let s:midnight = "00"
let s:pomegranate = "01"
let s:nephritis = "02"
let s:orange = "03"
let s:belizehole = "04"
let s:wisteria = "05"
let s:greensea = "06"
let s:silver = "07"
let s:asbestos = "08"
let s:alizarin = "09"
let s:emerald = "10"
let s:sunflower = "11"
let s:peterriver = "12"
let s:amethyst = "13"
let s:turquoise = "14"
let s:clouds = "15"

" Theme setup
hi clear
syntax reset
let g:colors_name = "flat"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return GUI color for light/dark variants
fun s:gui(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:gui00
    return s:gui07
  elseif a:color == s:gui01
    return s:gui06
  elseif a:color == s:gui02
    return s:gui05
  elseif a:color == s:gui03
    return s:gui04
  elseif a:color == s:gui04
    return s:gui03
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui06
    return s:gui01
  elseif a:color == s:gui07
    return s:gui00
  endif

  return a:color
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:midnight
    return s:clouds
  elseif a:color == s:clouds
    return s:midnight
  endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui08, "", s:alizarin, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:peterriver, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:alizarin, s:midnight, "")
call <sid>hi("Exception",     s:gui08, "", s:alizarin, "", "bold")
call <sid>hi("FoldColumn",    "", s:gui01, "", s:nephritis, "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:silver, s:nephritis, "")
call <sid>hi("IncSearch",     s:gui0A, "", s:sunflower, "", "")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui08, "", s:alizarin, "", "")
call <sid>hi("MatchParen",    s:gui03, s:gui00, s:orange, s:midnight,  "bold")
call <sid>hi("ModeMsg",       s:gui0B, "", s:orange, "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:emerald, "", "")
call <sid>hi("Question",      s:gui0A, "", s:sunflower, "", "")
call <sid>hi("Search",        s:gui0A, s:gui01, s:sunflower, s:nephritis,  "reverse")
call <sid>hi("SpecialKey",    s:gui03, "", s:silver, "", "")
call <sid>hi("TooLong",       s:gui08, "", s:alizarin, "", "")
call <sid>hi("Underlined",    s:gui08, "", s:alizarin, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:orange, "")
call <sid>hi("VisualNOS",     s:gui08, "", s:alizarin, "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:alizarin, "", "")
call <sid>hi("WildMenu",      s:gui08, "", s:alizarin, "", "")
call <sid>hi("Title",         s:gui0D, "", s:peterriver, "", "none")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:peterriver, s:midnight, "")
call <sid>hi("Cursor",        s:gui00, s:gui05, s:midnight, s:clouds, "")
call <sid>hi("NonText",       s:gui03, "", s:silver, "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:clouds, s:midnight, "")
call <sid>hi("LineNr",        s:gui03, s:gui01, s:silver, s:midnight, "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:silver, s:midnight, "")
call <sid>hi("SpecialKey",    s:gui03, "", s:silver, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:belizehole, s:orange, "none")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:silver, s:nephritis, "none")
call <sid>hi("VertSplit",     s:gui02, s:gui02, s:orange, s:orange, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:nephritis, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:nephritis, "none")
call <sid>hi("CursorLine",    "", s:gui01, "", s:nephritis, "none")
call <sid>hi("CursorLineNr",  s:gui03, s:gui01, s:midnight, s:nephritis, "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:belizehole, s:clouds, "none")
call <sid>hi("PMenuSel",      s:gui04, s:gui01, s:belizehole, s:clouds, "reverse")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:silver, s:nephritis, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:silver, s:nephritis, "none")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:emerald, s:nephritis, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui09, "", s:amethyst, "", "bold")
call <sid>hi("Character",    s:gui08, "", s:peterriver, "", "bold")
call <sid>hi("Comment",      s:gui03, "", s:asbestos, "", "bold")
call <sid>hi("Conditional",  s:gui0E, "", s:orange, "", "bold")
call <sid>hi("Constant",     s:gui09, "", s:turquoise, "", "bold")
call <sid>hi("Define",       s:gui0E, "", s:amethyst, "", "bold")
call <sid>hi("Delimiter",    s:gui0F, "", s:turquoise, "", "")
call <sid>hi("Float",        s:gui09, "", s:sunflower, "", "")
call <sid>hi("Function",     s:gui0D, "", s:emerald, "", "bold")
call <sid>hi("Identifier",   s:gui08, "", s:turquoise, "", "bold")
call <sid>hi("Include",      s:gui0D, "", s:emerald, "", "bold")
call <sid>hi("Keyword",      s:gui0E, "", s:amethyst, "", "bold")
call <sid>hi("Label",        s:gui0A, "", s:sunflower, "", "bold")
call <sid>hi("Number",       s:gui09, "", s:sunflower, "", "")
call <sid>hi("Operator",     s:gui05, "", s:turquoise, "", "bold")
call <sid>hi("PreProc",      s:gui0A, "", s:turquoise, "", "bold")
call <sid>hi("Repeat",       s:gui0A, "", s:turquoise, "", "bold")
call <sid>hi("Special",      s:gui0C, "", s:sunflower, "", "")
call <sid>hi("SpecialChar",  s:gui0F, "", s:sunflower, "", "")
call <sid>hi("Statement",    s:gui08, "", s:alizarin, "", "bold")
call <sid>hi("StorageClass", s:gui0A, "", s:sunflower, "", "bold")
call <sid>hi("String",       s:gui0B, "", s:peterriver, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:amethyst, "", "bold")
call <sid>hi("Tag",          s:gui0A, "", s:sunflower, "", "bold")
call <sid>hi("Todo",         s:gui0A, s:gui01, s:orange, s:midnight, "bold")
call <sid>hi("Type",         s:gui09, "", s:wisteria, "", "bold")
call <sid>hi("Typedef",      s:gui0A, "", s:sunflower, "", "bold")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, s:clouds, s:pomegranate, "")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:midnight, "")
call <sid>hi("SpellCap",     "", s:gui00, s:clouds, s:greensea, "")
call <sid>hi("SpellRare",    "", s:gui00, "", s:midnight, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui00, s:emerald, s:midnight, "")
call <sid>hi("DiffChange",   s:gui0D, s:gui00, s:peterriver, s:midnight, "")
call <sid>hi("DiffDelete",   s:gui08, s:gui00, s:alizarin, s:midnight, "")
call <sid>hi("DiffText",     s:gui0D, s:gui00, s:peterriver, s:midnight, "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00, s:emerald, s:midnight, "")
call <sid>hi("DiffFile",     s:gui08, s:gui00, s:alizarin, s:midnight, "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00, s:emerald, s:midnight, "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00, s:peterriver, s:midnight, "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00, s:alizarin, s:midnight, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:sunflower, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:amethyst, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:clouds, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:clouds, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:clouds, "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:amethyst, "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:turquoise, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:clouds, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:clouds, "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:pomegranate, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui08, "", s:alizarin, "", "")
call <sid>hi("gitCommitSummary",   s:gui0B, "", s:emerald, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:emerald, s:midnight, "bold")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:peterriver, s:midnight, "bold")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:alizarin, s:midnight, "bold")

" NERD Tree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:peterriver, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:clouds, "", "")

" vim-pandoc
call <sid>hi("pandocNoFormatted", "", "", s:turquoise, "", "")
call <sid>hi("pandocListItem", "", "", s:amethyst, "", "bold")
call <sid>hi("pandocAtxHeader", "", "", s:peterriver, "", "bold")
call <sid>hi("pandocBlockQuote", "", "", s:orange, "", "")
call <sid>hi("pandocDelimitedCodeBlock", "", "", s:emerald, "", "")
call <sid>hi("pandocPCite", "", "", s:nephritis, "", "")

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:midnight s:nephritis s:orange s:silver s:belizehole s:clouds s:wisteria s:asbestos s:alizarin s:pomegranate s:sunflower s:emerald s:turquoise s:peterriver s:amethyst s:greensea
