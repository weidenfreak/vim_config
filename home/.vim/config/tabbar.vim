"
" tabbar Plugin
"
let g:Tb_MaxSize=0          " I want it to automatically resize if I have buffers that fill more then one line
let g:Tb_MoreThanOne=0      " I want the tabbar to be always visible
let g:Tb_MapWindowNavVim = 0 " Disable Ctrl + Navkeys (works only with set macmeta and macmeta sucks)
let g:Tb_MapWindowNavArrows = 0 " Disable Ctrl + Cursorkeys

"
" Map <cmd + number key> to buffer (tab)
"
map <D-1> :call <SNR>100_Bf_SwitchTo(1)<CR>  
map <D-2> :call <SNR>100_Bf_SwitchTo(2)<CR>  
map <D-3> :call <SNR>100_Bf_SwitchTo(3)<CR>  
map <D-4> :call <SNR>100_Bf_SwitchTo(4)<CR>  
map <D-5> :call <SNR>100_Bf_SwitchTo(5)<CR>  
map <D-6> :call <SNR>100_Bf_SwitchTo(6)<CR>  
map <D-7> :call <SNR>100_Bf_SwitchTo(7)<CR>  
map <D-8> :call <SNR>100_Bf_SwitchTo(8)<CR>  
map <D-9> :call <SNR>100_Bf_SwitchTo(9)<CR>  
map <D-0> :call <SNR>100_Bf_SwitchTo(10)<CR> 

