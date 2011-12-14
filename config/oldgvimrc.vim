colorscheme twilight
color twilight

" Highlight extra whitespace as red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Create whitespace group
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" When merging - use these colors:
if &diff
  " VimDiff colors
  colorscheme railscasts
  highlight DiffAdd ctermfg=0 cterm=NONE guifg=#000000 gui=NONE
  highlight DiffChange ctermfg=0 cterm=NONE guifg=#000000 gui=NONE
  highlight DiffText ctermfg=0 guifg=#000000 cterm=NONE gui=NONE
endif
