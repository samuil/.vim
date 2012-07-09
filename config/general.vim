" Some sort of swap file fix
set directory=$TEMP

" Leader mapping
let mapleader = ","

" Save
nmap <leader>w :w!<cr>

" ???
nmap <leader>wa :wa!<cr>

" Quit
nmap <leader>q :q<cr>
nmap <leader>zz :wq!<cr>

" Remove search term highlights
nmap <leader>nh :nohl<cr>

" Map <esc> to Ctrl-J
imap <C-j> <Esc>

" " Tab navigation
map <C-H> gT
map <C-L> gt

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Please don't show Help when I miss the 1, escape or tilde buttons
imap <F1> ""

" Create whitespace group
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Command to delete whitespace
:command! Rmsp %s/\s\+$//
" Highlight extra whitespace as red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" :set hidden
set title

" Shell commands ouput in new buffer
function! s:ExecuteInShell(command)
  let command = join(map(split(a:command), 'expand(v:val)'))
  let winnr = bufwinnr('^' . command . '$')
  silent! execute  winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
  echo 'Execute ' . command . '...'
  silent! execute 'silent %!'. command
  silent! execute 'resize ' . line('$')
  silent! redraw
  silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
  silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
  echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
command! -complete=shellcmd -nargs=* TestThis call s:ExecuteInShell('bundle exec ruby -I test/ % -n <q-args>')

" Paste toggle
set pastetoggle=<F2>
