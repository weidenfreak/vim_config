""""""""""""""""""""""""""""""""""""""""
"" NERDTree-specific settings.
""""""""""""""""""""""""""""""""""""""""

" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2

"  NERDTree (KEY: ,d)
let NERDTreeShowBookmarks=1
map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" autocmd VimEnter * NERDTree
