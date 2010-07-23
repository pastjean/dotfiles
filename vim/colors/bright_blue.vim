" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/seed/485345/

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "bright_blue"

if version >= 700
  hi CursorLine     guibg=#FFFFFB
  hi CursorColumn   guibg=#FFFFFB
  hi MatchParen     guifg=#005FFF guibg=#FFFFFB gui=bold
  hi Pmenu          guifg=#000000 guibg=#C8C8C8
  hi PmenuSel       guifg=#000000 guibg=#4503FF
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#000000 gui=none
hi Normal           guifg=#000000 guibg=#FFFFFB gui=none
hi NonText          guifg=#000000 guibg=#F0F0EC gui=none
hi LineNr           guifg=#000000 guibg=#E6E6E2 gui=none
hi Normal           guifg=#000000 guibg=#FFFFFB gui=none
hi StatusLine       guifg=#000000 guibg=#D9CCFB gui=italic
hi StatusLineNC     guifg=#000000 guibg=#D7D7D3 gui=none
hi VertSplit        guifg=#000000 guibg=#E6E6E2 gui=none
hi Folded           guifg=#000000 guibg=#FFFFFB gui=none
hi Title            guifg=#4503FF guibg=NONE	gui=bold
hi Visual           guifg=#005FFF guibg=#F0F0EC gui=none
hi SpecialKey       guifg=#1820FF guibg=#F0F0EC gui=none

" Syntax highlighting
hi Comment guifg=#4503FF gui=none
hi Constant guifg=#1820FF gui=none
hi Number guifg=#1820FF gui=none
hi Identifier guifg=#006BF0 gui=none
hi Statement guifg=#005FFF gui=none
hi Function guifg=#1813E0 gui=none
hi Special guifg=#001DEE gui=none
hi PreProc guifg=#001DEE gui=none
hi Keyword guifg=#005FFF gui=none
hi String guifg=#0000B2 gui=none
hi Type guifg=#0000BF gui=none
hi pythonBuiltin guifg=#006BF0 gui=none
