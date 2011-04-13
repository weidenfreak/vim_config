"
" Add PHP Function to Omni-Complete
" 
setlocal dictionary+=~/.vim/external/php-functionlist.txt

"
" PHP Manual
" Istall "pman" with 
" sudo pear install doc.php.net/pman
autocmd BufNewFile,BufRead *.php set keywordprg=pman
