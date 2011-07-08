""""""""""""""""""""""""""""""""
"" Set Ruby-specific keybindings
""""""""""""""""""""""""""""""""

autocmd FileType ruby  call LoadRubyKeybindings()
autocmd FileType eruby call LoadRubyKeybindings()
autocmd FileType haml  call LoadRubyKeybindings()
autocmd FileType yaml  call LoadRubyKeybindings()

fun LoadRubyKeybindings()
   " bind control-l to hashrocket
   imap <buffer> <C-l> <Space>=><Space>"

   " bind control-k to turn the current word into a symbol
   imap <buffer> <C-k> <C-o>b:<Esc>Ea
   nmap <buffer> <C-k> lbi:<Esc>E

   " set the foldmethod to 'syntax'
   setlocal foldmethod=syntax
   setlocal foldlevel=2
   
   " No Folding!
   set nofoldenable
endfun

" These files are also Ruby.
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,Vagrantfile,config.ru} set ft=ruby

" Remove trailing whitespace
au BufWritePre *.rb :%s/\s\+$//e
