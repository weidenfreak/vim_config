"
" Configuration for using MacVim in diff mode (mvim -d / -o )
"

function GlobalDiffMode()
  call GlobalTbStop() " Stop tabbar
  set ea " Equalheight of all windows
endfunction

" When startet as 'vimdiff'
if &diff
  call GlobalDiffMode()
endif

" When startet as 'mvim -d'
au FilterWritePre * if &diff | call GlobalDiffMode() | endif
