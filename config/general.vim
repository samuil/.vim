" Some sort of swap file fix
set directory=.,$TEMP

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

set clipboard=unnamed

