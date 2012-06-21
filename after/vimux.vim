if exists('$TMUX')
  autocmd FileType ruby map <leader>ts :RunRubyFocusedTest<CR>
  autocmd FileType ruby nmap <leader>ru :call RunVimTmuxCommand("clear; bundle exec ruby -Itest/ ".bufname("%")."\n")<CR>
  autocmd FileType ruby map <leader>ta :call RunVimTmuxCommand("clear; bundle exec rake test:unit test:functional test:integration\n")<CR>
  autocmd FileType ruby map <leader>tu :call RunVimTmuxCommand("clear; bundle exec rake test:unit\n")<CR>
  autocmd FileType ruby map <leader>tf :call RunVimTmuxCommand("clear; bundle exec rake test:functional\n")<CR>
  autocmd FileType ruby map <leader>ti :call RunVimTmuxCommand("clear; bundle exec rake test:integration\n")<CR>
  autocmd FileType cucumber map <Leader>ts :RunFocusedCuke<CR>
  autocmd FileType cucumber nmap <Leader>cu :call RunVimTmuxCommand("clear; bundle exec cucumber ".bufname("%")."\n")<CR>
  autocmd FileType cucumber map <Leader>ta :RunAllCukes<CR>
endif

"Run all rake tests
map <leader>rk :call RunVimTmuxCommand("clear; bundle exec rake")<CR>

" Re-run last command
map <leader>tr :call RunVimTmuxCommand("clear; !!\n")<CR>

map <leader>cp :CloseVimTmuxPanes<CR>
