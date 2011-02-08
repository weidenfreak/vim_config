"
" Fuzzy Finder
"
nmap <Leader>t :FufCoverageFile<CR> 

" More Excludes
" copied from home/.vim/bundle/fuzzyfinder/plugin/fuf.vim
" Exclude .svn, zend and vendor directories
let g:fuf_dir_exclude = '\v(^|[/\\])(\.(svn|hg|git|bzr)|Zend|vendor)($|[/\\])'

