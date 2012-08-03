if exists('$TMUX')
  autocmd FileType ruby map <leader>ts :RunRubyFocusedTest<CR>
  autocmd FileType ruby nmap <leader>ru :call RunVimTmuxCommand("clear; bundle exec ruby -Itest/ ".bufname("%")."\n")<CR>
  autocmd FileType ruby map <leader>ta :call RunVimTmuxCommand("clear; bundle exec rake\n")<CR>
  autocmd FileType cucumber map <Leader>ts :RunFocusedCuke<CR>
  autocmd FileType cucumber nmap <Leader>cu :call RunVimTmuxCommand("clear; bundle exec cucumber ".bufname("%")."\n")<CR>
  autocmd FileType cucumber map <Leader>ta :RunAllCukes<CR>
  autocmd FileType coffee map <Leader>ts :call RunVimTmuxCommand("clear; bundle exec jasmine-headless-webkit ".bufname("%")."\n")<CR>
  autocmd FileType coffee map <Leader>ta :call RunVimTmuxCommand("clear; bundle exec jasmine-headless-webkit\n")<CR>
endif

"Run all rake tests
map <leader>rk :call RunVimTmuxCommand("clear; bundle exec rake")<CR>

" Re-run last command
map <leader>tr :call RunVimTmuxCommand("clear; !!\n")<CR>

map <leader>cp :CloseVimTmuxPanes<CR>
