"
" Supertab config
"
let g:SuperTabDefaultCompletionType = "context"

" Make supertab behave as normal <Tab> in HTML Files
au! BufEnter,BufNewFile *.html,<html;eruby> imap <buffer> <Tab> <Tab>

