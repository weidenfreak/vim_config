"
" Setting for vim-coffee-script
"

" Autocompile Coffe Script
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow
