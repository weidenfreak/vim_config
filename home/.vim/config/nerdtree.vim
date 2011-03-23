""""""""""""""""""""""""""""""""""""""""
"" NERDTree-specific settings.
""""""""""""""""""""""""""""""""""""""""

" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2

" show hidden files
let NERDTreeShowHidden=1

"  NERDTree (KEY: ,d)
let NERDTreeShowBookmarks=1
" autocmd VimEnter * exe 'NERDTree' | wincmd l 
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

