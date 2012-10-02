""""""""""""""""""""""""""""""""""""""""
"" NERDTree-specific settings.
""""""""""""""""""""""""""""""""""""""""
" open nerd tree with the file that is currently open
fun! NERDTreeSmartToggle()
  if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
    execute ":NERDTreeClose"
  else
    let s:file = expand("%")
    if s:file != ""
      if stridx(s:file, '/.') > -1 || strpart(s:file, 0,1) == "."
        " a .dotfile! need to reveal it and show dotfiles
        execute ":NERDTree"
        normal I
        call b:NERDTreeRoot.reveal(b:NERDTreeRoot.path.New(s:file))
      else
        execute ":NERDTreeFind"
      endif
    else
      execute ":NERDTree"
    endif
  endif
endfun

set timeoutlen=250

" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2

"  NERDTree (KEY: ,d)
let NERDTreeShowBookmarks=1
"map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
noremap <leader>d :call NERDTreeSmartToggle()<CR>
" autocmd VimEnter * NERDTree
