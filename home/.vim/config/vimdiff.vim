"
" Setting for VIM in diff-mode (mvim -d)
"

if &diff
  " Turning off TabBar is done in tabbar.vim	
  set equalalways
  set diffopt=filler,iwhite,vertical
end