let g:yankring_history_file = '.vim-yankring'
let g:yankring_min_element_length = 2

" see *yankring-custom-maps*
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

nnoremap <leader>ty :YRShow<Enter>
