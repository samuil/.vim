command CukeThis !bundle exec cucumber %
nnoremap <leader>cu :CukeThis<CR>

" " Show Rake output in new window
:command! RunRake !Rake | mvim -c "set nomodified" -

" " Show Ruby output in new window
:command! RunRuby :w !ruby % | mvim -c "set nomodified" -

au BufRead,BufNewFile Capfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
