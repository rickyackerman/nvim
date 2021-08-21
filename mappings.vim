" normal mode mappings
nnoremap w <cmd>noh<cr>
nnoremap <silent>hs <cmd>split<cr>
nnoremap <silent>vs <cmd>vsplit<cr>
nnoremap <silent>g] <c-w>l 
nnoremap <silent>[g <c-w>h

" insert mode mappings
inoremap jk <esc>

" telescope mappings
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

