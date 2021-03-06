" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/seed/626943/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "inspiration626943"

if version >= 700
  hi CursorLine     guibg=#000000 ctermbg=16
  hi CursorColumn   guibg=#000000 ctermbg=16
  hi MatchParen     guifg=#00C4FF guibg=#000000 gui=bold ctermfg=45 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#F1F29C ctermfg=255 ctermbg=229
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#30301F gui=italic ctermfg=255 ctermbg=236 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#282828 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#F1F29C guibg=NONE	gui=bold ctermfg=229 ctermbg=NONE cterm=bold
hi Visual           guifg=#3AFF9C guibg=#323232 gui=none ctermfg=85 ctermbg=236 cterm=none
hi SpecialKey       guifg=#5ACDD4 guibg=#0F0F0F gui=none ctermfg=80 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#F1F29C gui=none ctermfg=229 cterm=none
hi Constant guifg=#5ACDD4 gui=none ctermfg=80 cterm=none
hi Number guifg=#5ACDD4 gui=none ctermfg=80 cterm=none
hi Identifier guifg=#1096F6 gui=none ctermfg=33 cterm=none
hi Statement guifg=#00C4FF gui=none ctermfg=45 cterm=none
hi Function guifg=#4CEEAA gui=none ctermfg=85 cterm=none
hi Special guifg=#89FF96 gui=none ctermfg=120 cterm=none
hi PreProc guifg=#89FF96 gui=none ctermfg=120 cterm=none
hi Keyword guifg=#00C4FF gui=none ctermfg=45 cterm=none
hi String guifg=#3AFF9C gui=none ctermfg=85 cterm=none
hi Type guifg=#9BEBAB gui=none ctermfg=115 cterm=none
hi pythonBuiltin guifg=#1096F6 gui=none ctermfg=33 cterm=none
hi TabLineFill guifg=#17663E gui=none ctermfg=23 cterm=none

