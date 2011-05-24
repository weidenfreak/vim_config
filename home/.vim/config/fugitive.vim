""""""""""""""""""""""""""""""""""""""""
"" Fugitive-specific configuration
""""""""""""""""""""""""""""""""""""""""

" keybindings
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Git push<CR>

" Auto close fugitive buffers when I leave them
" from http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
autocmd BufReadPost fugitive://* set bufhidden=delete
