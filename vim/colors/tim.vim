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

let s:black = "00"
let s:red = "01"
let s:green = "02"
let s:yellow = "03"
let s:blue = "04"
let s:magenta = "05"
let s:cyan = "06"
let s:white = "07"
let s:lightblack = "08"
let s:lightred = "09"
let s:lightgreen = "10"
let s:lightyellow = "11"
let s:lightblue = "12"
let s:lightmagenta = "13"
let s:lightcyan = "14"
let s:lightwhite = "15"

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
   if a:color == s:black
      return s:lightwhite
   elseif a:color == s:lightwhite
      return s:black
   elseif a:color == s:lightcyan
      return s:cyan
   elseif a:color == s:lightgreen
      return s:green
   elseif a:color == s:lightblue
      return s:blue
   elseif a:color == s:lightmagenta
      return s:magenta
   elseif a:color == s:lightyellow
      return s:yellow
   elseif a:color == s:lightred
      return s:red
   endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui08, "", s:lightred, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:lightblue, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:lightred, s:black, "")
call <sid>hi("Exception",     s:gui08, "", s:lightred, "", "bold")
call <sid>hi("FoldColumn",    "", s:gui01, "", s:green, "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:yellow, s:black, "")
call <sid>hi("IncSearch",     s:gui0A, "", s:lightyellow, "", "")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui08, "", s:lightred, "", "")
call <sid>hi("MatchParen",    s:gui03, s:gui00, s:yellow, s:black,  "bold")
call <sid>hi("ModeMsg",       s:gui0B, "", s:yellow, "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:lightgreen, "", "")
call <sid>hi("Question",      s:gui0A, "", s:lightyellow, "", "")
call <sid>hi("Search",        s:gui0A, s:gui01, s:lightyellow, s:green,  "reverse")
call <sid>hi("SpecialKey",    s:gui03, "", s:white, "", "")
call <sid>hi("TooLong",       s:gui08, "", s:lightred, "", "")
call <sid>hi("Underlined",    s:gui08, "", s:lightred, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:yellow, "")
call <sid>hi("VisualNOS",     s:gui08, "", s:lightred, "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:lightred, "", "")
call <sid>hi("WildMenu",      s:gui08, "", s:lightred, "", "")
call <sid>hi("Title",         s:gui0D, "", s:lightblue, "", "none")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:lightblue, s:black, "")
call <sid>hi("Cursor",        s:gui00, s:gui05, s:black, s:lightwhite, "")
call <sid>hi("NonText",       s:gui03, "", s:white, "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:lightwhite, "", "")
call <sid>hi("LineNr",        s:gui03, s:gui01, s:white, "", "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:white, "", "")
call <sid>hi("SpecialKey",    s:gui03, "", s:white, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:blue, s:yellow, "none")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:white, s:green, "none")
call <sid>hi("VertSplit",     s:gui02, s:gui02, s:yellow, s:yellow, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:green, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:green, "none")
call <sid>hi("CursorLine",    "", s:gui01, "", s:green, "none")
call <sid>hi("CursorLineNr",  s:gui03, s:gui01, s:black, s:green, "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:blue, s:lightwhite, "none")
call <sid>hi("PMenuSel",      s:gui04, s:gui01, s:blue, s:lightwhite, "reverse")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:white, s:green, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:white, s:green, "none")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:lightgreen, s:green, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui09, "", s:magenta, "", "")
call <sid>hi("Character",    s:gui08, "", s:blue, "", "")
call <sid>hi("Comment",      s:gui03, "", s:lightblack, "", "")
call <sid>hi("Conditional",  s:gui0E, "", s:lightcyan, "", "")
call <sid>hi("Constant",     s:gui09, "", s:green, "", "")
call <sid>hi("Define",       s:gui0E, "", s:magenta, "", "")
call <sid>hi("Delimiter",    s:gui0F, "", s:cyan, "", "")
call <sid>hi("Float",        s:gui09, "", s:yellow, "", "")
call <sid>hi("Function",     s:gui0D, "", s:lightgreen, "", "")
call <sid>hi("Identifier",   s:gui08, "", s:lightcyan, "", "")
call <sid>hi("Include",      s:gui0D, "", s:green, "", "")
call <sid>hi("Keyword",      s:gui0E, "", s:magenta, "", "")
call <sid>hi("Label",        s:gui0A, "", s:yellow, "", "")
call <sid>hi("Number",       s:gui09, "", s:lightyellow, "", "")
call <sid>hi("Operator",     s:gui05, "", s:lightcyan, "", "")
call <sid>hi("PreProc",      s:gui0A, "", s:cyan, "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:lightmagenta, "", "")
call <sid>hi("Special",      s:gui0C, "", s:yellow, "", "bold")
call <sid>hi("SpecialChar",  s:gui0F, "", s:yellow, "", "bold")
call <sid>hi("Statement",    s:gui08, "", s:lightred, "", "")
call <sid>hi("StorageClass", s:gui0A, "", s:yellow, "", "")
call <sid>hi("String",       s:gui0B, "", s:blue, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:magenta, "", "")
call <sid>hi("Tag",          s:gui0A, "", s:yellow, "", "")
call <sid>hi("Todo",         s:gui0A, s:gui01, s:green, s:black, "")
call <sid>hi("Type",         s:gui09, "", s:lightyellow, "", "")
call <sid>hi("Typedef",      s:gui0A, "", s:yellow, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, s:lightwhite, s:red, "")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:black, "")
call <sid>hi("SpellCap",     "", s:gui00, s:lightwhite, s:cyan, "")
call <sid>hi("SpellRare",    "", s:gui00, "", s:black, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui00, s:lightgreen, s:black, "")
call <sid>hi("DiffChange",   s:gui0D, s:gui00, s:lightblue, s:black, "")
call <sid>hi("DiffDelete",   s:gui08, s:gui00, s:lightred, s:black, "")
call <sid>hi("DiffText",     s:gui0D, s:gui00, s:lightblue, s:black, "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00, s:lightgreen, s:black, "")
call <sid>hi("DiffFile",     s:gui08, s:gui00, s:lightred, s:black, "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00, s:lightgreen, s:black, "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00, s:lightblue, s:black, "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00, s:lightred, s:black, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:lightyellow, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:lightmagenta, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:lightwhite, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:lightwhite, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:lightwhite, "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:lightmagenta, "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:lightcyan, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:lightwhite, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:lightwhite, "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:red, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui08, "", s:lightred, "", "")
call <sid>hi("gitCommitSummary",   s:gui0B, "", s:lightgreen, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:green, "", "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:yellow, "", "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:red, "", "")

" NERD Tree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:lightblue, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:lightwhite, "", "")

" vim-pandoc
call <sid>hi("pandocNoFormatted", "", "", s:lightcyan, "", "")
call <sid>hi("pandocListItem", "", "", s:lightmagenta, "", "bold")
call <sid>hi("pandocAtxHeader", "", "", s:yellow, "", "bold")
call <sid>hi("pandocSetexHeader", "", "", s:yellow, "", "bold")
call <sid>hi("pandocBlockQuote", "", "", s:lightblue, "", "")
call <sid>hi("pandocDelimitedCodeBlock", "", "", s:lightcyan, "", "")
call <sid>hi("pandocCodeBlock", "", "", s:lightcyan, "", "")
call <sid>hi("pandocPCite", "", "", s:lightgreen, "", "")

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:black s:green s:yellow s:white s:blue s:lightwhite s:magenta s:lightblack s:lightred s:red s:lightyellow s:lightgreen s:lightcyan s:lightblue s:lightmagenta s:cyan
