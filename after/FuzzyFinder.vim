" Bindings
nnoremap <C-t> :FufCoverageFile<CR>
"nnoremap <leader>t :FufCoverageFile<CR> -- OVERWRITTEN BY VIMUX
nnoremap <leader>fr :FufRenewCache<CR>

" Colors
highlight Pmenu ctermfg=white ctermbg=gray guibg=white

" Settings
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|jpg|png|gif)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
