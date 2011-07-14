""""""""""""""""""""""""""""""""""""""""
"" Keyboard-command related settings.
"" does not contain plugin-specific
"" settings, just 'global' ones.
""""""""""""""""""""""""""""""""""""""""

" fix arrow keys in console mode
if has('gui_running')
  set nomacmeta
else
   set term=ansi
endif

"
" Leader = Comma
"
let mapleader = ","

" ;w saves a buffer
map <Leader>w :w!<CR>

" ;q closes a vim-window
map <Leader>q :q!<CR>

" navigate among windows using ;[hjkl]
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l

" navigate around in buffers...
map <Leader>n :bnext<CR>
map <Leader>p :bprevious<CR>

" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
noremap ' `
noremap ` '

nnoremap ;; :

"
" Keep Block visually marked when indenting
"
nmap > ><CR>gv
nmap < <<CR>gv
vmap > ><CR>gv
vmap < <<CR>gv

" Copied modified from https://gist.github.com/578787
" Ctrl+Up, Ctrl+k moves line up
nmap <C-Up> :m .-2<CR>
nmap <C-k> :m .-2<CR>
imap <C-Up> :m .-2<CR> 
imap <C-k> :m .-2<CR>
vmap <C-Up> :m .-2<CR> 
vmap <C-k> :m .-2<CR>

" Ctrl+Down, Ctrl+j moves line down
nmap <C-Down> :m .+<CR> 
nmap <C-j> :m .+<CR>
imap <C-Down> :m .+<CR> 
imap <C-j> :m .+<CR>
vmap <C-Down> :m .+<CR> 
vmap <C-j> :m .+<CR>

"
" Show Invisibles (http://vimcasts.org/episodes/show-invisibles/) 
"
" Shortcut to rapidly toggle `set list`
" Use the same symbols as TextMate for tabstops and EOLs
nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Define here AGAIN
nmap <Leader>m :FufCoverageFile<CR>

" ,x closes buffer and jumps to previous one
nmap <Leader>x :bd<CR>:Tbbp<CR> 

" ,o closes all buffers but the current one
nmap <Leader>o :BufOnly<CR> 
