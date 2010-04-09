if g:zenburn_high_Contrast
  " disable bold for current line in graphical Vim
  highlight CursorLine gui=none
endif

" brighten comments (SpecialKey) and disable italics
highlight Comment guifg=#9ece9e ctermfg=151 gui=none

" darken listchars
highlight! link SpecialKey NonText
