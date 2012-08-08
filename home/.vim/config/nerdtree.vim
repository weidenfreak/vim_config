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

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
" Stolen from http://stackoverflow.com/a/5403847/171364 (janus repo)
fun! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

set timeoutlen=250

" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2

"  NERDTree (KEY: ,d)
let NERDTreeShowBookmarks=1
"map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
noremap <leader>d :call NERDTreeSmartToggle()<CR>
" autocmd VimEnter * NERDTree
