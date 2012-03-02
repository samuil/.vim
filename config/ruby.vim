:command! -complete=file -nargs=* Cuke Shell bundle exec cucumber <q-args>
nnoremap <leader>cu :Cuke %<CR>

" " Show Rake output in new buffer
:command! RunRake s:RunShellCommand('bundle exec rake')

" " Show Ruby output in new buffer
:command! RunRuby s:RunShellCommand('ruby %')

au BufRead,BufNewFile Capfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
