set colorcolumn=+1 " show textwidth limit
autocmd ColorScheme * highlight! link ColorColumn StatusLineNC

" delegate colorscheme configuration to colors/_<colorscheme>.vim files
autocmd ColorScheme * execute 'runtime colors/_'. g:colors_name .'.vim'

colorscheme wombat
