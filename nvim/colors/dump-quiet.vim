" Header
"  Please edit this text.

let s:colors_name='dump-quiet'
set background=dark

if !has('gui_running') && &t_Co<256
  echomsg 'Error: colorscheme "'.s:colors_name.'" requires 256 colors.'
  echomsg 'You may solve the problem with the following command.'
  echomsg ':set t_Co=256 | colorscheme '.s:colors_name
  finish
endif
" highlight clear
" if exists('syntax_on')
"   syntax reset
" endif
let g:colors_name=s:colors_name
set fillchars="vert:\ "



" Main #d3dd22
" Blue #407dd4

if &bg=='dark'
  hi      Normal       guifg=#d1d1d1 guibg=#1c1b1b ctermfg=NONE  ctermbg=NONE gui=NONE cterm=NONE
elseif &bg=='light'
  hi      Normal       guifg=#dadada guibg=#d0d0d0 ctermfg=NONE  ctermbg=NONE gui=NONE cterm=NONE
endif

hi      Comment      guifg=#6a7887 guibg=NONE    ctermfg=242  ctermbg=NONE gui=bold cterm=bold
hi      Constant     guifg=#7dbfef guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      String       guifg=#60bfd2 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi link Character    Constant
hi link Number       Constant
hi link Boolean      Constant
hi link Float        Constant
hi      Identifier   guifg=#d1d1d1 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Function     guifg=#FFCE6B guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Statement    guifg=#F07171 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Conditional  guifg=#F07171 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Operator     guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi link Exception    Statement
hi      PreProc      guifg=#409dd4 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Define       guifg=#FFFFFF guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Type         guifg=#409dd4 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      TypeDef      guifg=#d46040 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      StorageClass guifg=#d46040 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Special      guifg=#F79256 guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Underlined   guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=underline cterm=underline
hi      Ignore       guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      Error        guifg=#F07171 guibg=#080808 ctermfg=197  ctermbg=232  gui=bold,reverse cterm=bold,reverse
hi      Todo         guifg=#00ffaf guibg=NONE    ctermfg=49   ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi      ColorColumn  guifg=NONE    guibg=#1c1c1c ctermfg=NONE ctermbg=234  gui=NONE cterm=NONE
hi      DiffAdd      guifg=#60e29b guibg=#080808 ctermfg=34   ctermbg=232  gui=reverse cterm=reverse
hi      DiffChange   guifg=#87afd7 guibg=#080808 ctermfg=110  ctermbg=232  gui=reverse cterm=reverse
hi      DiffDelete   guifg=#d75f5f guibg=#080808 ctermfg=167  ctermbg=232  gui=reverse cterm=reverse
hi      DiffText     guifg=#d787d7 guibg=#080808 ctermfg=176  ctermbg=232  gui=reverse cterm=reverse
hi      ErrorMsg     guifg=#dadada guibg=#080808 ctermfg=253  ctermbg=232  gui=reverse cterm=reverse
hi      Folded       guifg=#6c6c6c guibg=#080808 ctermfg=242  ctermbg=232  gui=NONE cterm=NONE
hi      FoldColumn   guifg=#6c6c6c guibg=NONE    ctermfg=242  ctermbg=NONE gui=NONE cterm=NONE
hi      IncSearch    guifg=#9c6c05 guibg=#080808 ctermfg=214  ctermbg=232  gui=reverse cterm=reverse
hi      LineNr       guifg=#444444 guibg=NONE    ctermfg=238  ctermbg=NONE gui=NONE cterm=NONE
hi      ModeMsg      guifg=fg guibg=NONE    ctermfg=253  ctermbg=NONE gui=bold cterm=bold
hi      MoreMsg      guifg=fg guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      NonText      guifg=#6c6c6c guibg=NONE    ctermfg=242  ctermbg=NONE gui=NONE cterm=NONE
hi      Pmenu        guifg=fg      guibg=NONE      ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi      PmenuSel     guifg=#080808 guibg=NONE ctermfg=232  ctermbg=176  gui=NONE cterm=NONE
hi      PmenuSbar    guifg=#dadada guibg=NONE ctermfg=253  ctermbg=242  gui=NONE cterm=NONE
hi      PmenuThumb   guifg=#dadada guibg=NONE ctermfg=253  ctermbg=176  gui=NONE cterm=NONE
hi      Search       guifg=#4aabfe guibg=#080808 ctermfg=39   ctermbg=232  gui=reverse cterm=reverse
hi      SpellBad     guifg=#d7005f guibg=NONE    ctermfg=161  ctermbg=NONE gui=underline cterm=underline
hi      SpellCap     guifg=#3c83d5 guibg=NONE    ctermfg=32   ctermbg=NONE gui=underline cterm=underline
hi      SpellLocal   guifg=#d787d7 guibg=NONE    ctermfg=176  ctermbg=NONE gui=underline cterm=underline
hi      SpellRare    guifg=#3dafac guibg=NONE    ctermfg=37   ctermbg=NONE gui=underline cterm=underline
hi      StatusLine   guifg=#080808 guibg=#000000 ctermfg=232  ctermbg=253  gui=bold cterm=bold
hi      StatusLineNC guifg=#6c6c6c guibg=#080808 ctermfg=242  ctermbg=232  gui=reverse cterm=reverse
hi      TabLine      guifg=#6c6c6c guibg=#080808 ctermfg=242  ctermbg=232  gui=reverse cterm=reverse
hi      TabLineFill  guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      TabLineSel   guifg=#080808 guibg=#dadada ctermfg=232  ctermbg=253  gui=bold cterm=bold
hi      Title        guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi      Visual       guifg=#303030 guibg=#dadada ctermfg=NONE  ctermbg=NONE  gui=reverse cterm=reverse
hi      VisualNOS    guifg=NONE    guibg=#303030 ctermfg=NONE ctermbg=236  gui=NONE cterm=NONE
hi      WarningMsg   guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      WildMenu     guifg=#4aabfe guibg=#080808 ctermfg=39   ctermbg=232  gui=bold cterm=bold
hi      CursorColumn guifg=NONE    guibg=NONE ctermfg=NONE ctermbg=236  gui=NONE cterm=NONE
hi      CursorLine   guifg=NONE    guibg=#444444 ctermfg=NONE ctermbg=236  gui=NONE cterm=NONE
hi      CursorLineNr guifg=NONE guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      MatchParen   guifg=#ff00af guibg=NONE    ctermfg=199  ctermbg=NONE gui=bold cterm=bold
hi      SignColumn   guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      SpecialKey   guifg=#dadada guibg=NONE    ctermfg=253  ctermbg=NONE gui=NONE cterm=NONE
hi      VertSplit    guifg=fg      guibg=bg      ctermfg=NONE ctermbg=NONE  gui=NONE cterm=NONE

"hi      DiagnosticError    guifg=#dadada      guibg=#d75f5f      ctermfg=NONE ctermbg=NONE  gui=NONE cterm=NONE
hi      DiagnosticError    guifg=#dadada      guibg=rgba(215,95,95,0.2)      ctermfg=NONE ctermbg=NONE  gui=NONE cterm=NONE

hi      TelescopeBorder    guifg=#d75f5f      guibg=NONE      ctermfg=NONE ctermbg=NONE  gui=NONE cterm=NONE

hi      Pmenu        guifg=#ffffff guibg=NONE      ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
hi      PmenuSel     guifg=#ffffff guibg=#444444 ctermfg=255  ctermbg=238  gui=NONE cterm=NONE
hi      PmenuSbar    guifg=#ffffff guibg=NONE ctermfg=255  ctermbg=242  gui=NONE cterm=NONE
hi      PmenuThumb   guifg=#ffffff guibg=NONE ctermfg=255  ctermbg=176  gui=NONE cterm=NONE

hi GitSignsAdd    guifg=#00ff00 ctermfg=2
hi GitSignsChange guifg=#ffff00 ctermfg=3
hi GitSignsDelete guifg=#ff0000 ctermfg=1
" Created with vim-colorscheme-edit v1.0.0
"   https://github.com/nokobear/vim-colorscheme-edit
