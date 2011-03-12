"
" Configuration for using MacVim in diff mode (mvim -d / -o )
"
if &diff
  call GlobalTbStop() " Stop tabbar
  set ea " Equalheight of all windows
endif

