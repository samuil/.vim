" Leader mappings
let mapleader = ","
 nmap <leader>w :w!<cr>
 nmap <leader>wa :wa!<cr>
 nmap <leader>q :q<cr>
 nmap <leader>nf :NERDTreeFind<cr>
 nmap <leader>nh :nohl<cr>

" "Split navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-X> <C-W>x

" " Split resizing
map + <C-W>+
map - <C-W>-
map = <C-W>=

" " Split creation prefs
set splitbelow
set splitright

" " Tab navigation
map <C-H> gT
map <C-L> gt

" set pastetoggle=<F2>
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
imap <F1> ""

" " Command to delete whitespace
:command! Rmsp %s/\s\+$//

" " Commands to pull all Hex codes into TOCs and format them
:command! -nargs=1 Swatches %g/#\x\{3,6\};/co<args>
:command! -nargs=1 CleanHexes <args>s/^.*\(#\x\+;*$\)/ \* \1/g
:command! -nargs=1 TOC %g/\/\*\ *@/co<args>

" " Show Rake output in new window
:command! RunRake !Rake | mvim -c "set nomodified" -

" " Show Ruby output in new window
:command! RunRuby :w !ruby % | mvim -c "set nomodified" -

" " My colorz
let &t_Co=256
let g:molokai_original = 1
colorscheme twilight2
color twilight2


" :set hidden
set title

set clipboard=unnamed

au BufRead,BufNewFile Capfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
