function GlobalVimDiffMode()

  " If Tabbar is not loaded make it think it is
  let Tb_loaded= 1
  
  " If Tabbar is already loaded, stop it
  if exists(*GlobalTbStop)
    call GlobalTbStop()
  endif
  
  " Make Splits the same size
  set equalalways
  
  " Ignore Whitespace in diff
  set diffopt=filler,iwhite

endfunction


" When startet as 'mvim -d'
au FilterWritePre * if &diff | call GlobalVimDiffMode() | endif
