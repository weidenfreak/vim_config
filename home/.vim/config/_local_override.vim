"
" Here be overrides :)
"

"
" useful commands:
" ctrl-w_  : maximize current window
" ctrl-w=  : make all equal size
"

"
" useful Execs:
" :call pathogen#helptags() : Generate all Helptags in runtimepath
"

"
" Leader = Comma
"
let mapleader = ","

"
" Two Spaces, always
"
set softtabstop=2
set tabstop=2
set shiftwidth=2

"
" Height and Width
"
set columns=9999
set lines=999

"
" No Wrapping whatsoever
"
set textwidth=0
set nolinebreak
set nowrap

"
" New Font
"
set guifont=Inconsolata-dz:h12.00

"
" No Auto-Wrap!
"
set formatoptions=crqn21

"
" No see-through in GUI
"
if has("gui_running")
  set transp=0
endif

"
"  NERDTree (KEY: ,d)
"  Auto-Open
"
let NERDTreeShowBookmarks=1
" autocmd VimEnter * exe 'NERDTree' | wincmd l 
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

"
" Railscasts Colors like Textmate (http://www.vim.org/scripts/script.php?script_id=1995)
"
colorscheme railscasts

"
" Show Invisibles (http://vimcasts.org/episodes/show-invisibles/) 
"
" Shortcut to rapidly toggle `set list`
" Use the same symbols as TextMate for tabstops and EOLs
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set list! 

"
" Use same TAB Setting as everywhere else in Rails
"
autocmd User Rails setlocal shiftwidth=2
autocmd User Rails setlocal tabstop=2
autocmd User Rails setlocal softtabstop=2

"
" Keep Block visually marked when indenting
"
nmap > ><CR>gv
nmap < <<CR>gv
vmap > ><CR>gv
vmap < <<CR>gv

" Copied modified from https://gist.github.com/578787
" Cmd+Up, Cmd+k moves line up
nmap <D-Up> :m .-2<CR>
nmap <D-k> :m .-2<CR>
imap <D-Up> :m .-2<CR> 
imap <D-k> :m .-2<CR>
vmap <D-Up> :m .-2<CR> 
vmap <D-k> :m .-2<CR>

" Cmd+Down, Cmd+j moves line down
nmap <D-Down> :m .+<CR> 
nmap <D-j> :m .+<CR>
imap <D-Down> :m .+<CR> 
imap <D-j> :m .+<CR>
vmap <D-Down> :m .+<CR> 
vmap <D-j> :m .+<CR>

"
" Since I constantly type :W instead of :w remap that
"
command! W w
command! Qa qa

" Show cursor line
set cul

" Relative Numberse
set relativenumber

" Wrap
set wrap

if has("gui_running")
  " No macmeta ever!
  set nomacmeta
endif
