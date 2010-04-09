set background=dark
set colorcolumn=+1 " show textwidth limit

" delegate colorscheme configuration to config/color/<colorscheme>.vim files
autocmd ColorScheme * execute 'runtime config/color/'. g:colors_name .'.vim'

if has('gui_running')
  colorscheme base16-tomorrow
else
  colorscheme zenburn
endif
