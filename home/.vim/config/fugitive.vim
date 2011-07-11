""""""""""""""""""""""""""""""""""""""""
"" Fugitive-specific configuration
""""""""""""""""""""""""""""""""""""""""

" keybindings
com Gs Gstatus
com Gp Git push

" Auto close fugitive buffers when I leave them
" from http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
autocmd BufReadPost fugitive://* set bufhidden=delete
