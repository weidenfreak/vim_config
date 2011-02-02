"
" PHP VIP Bundle (https://github.com/tobyS/vip)
"
" Plugin isn't pathogen ready so explicit loading here

source ~/.vim/bundle/php-vip/.vim/php-doc.vim

"
" Map PHPDoc Functions
"
inoremap <C-P> :call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>

"
" reset defaults
"
let g:pdv_cfg_Version = ""
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Author = ""
let g:pdv_cfg_Copyright = ""
let g:pdv_cfg_License = ""

"
" Add PHP Function to Omni-Complete
" 
setlocal dictionary+=~/.vim/bundle/php-vip/funclist.txt

"
" PHP Manual (siehe external/phpmanual)
" VORHER: export MANPAGER=more
autocmd FileType php set keywordprg="pman"
