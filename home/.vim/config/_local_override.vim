"
" Here be overrides :)
"
let mapleader = ","

set softtabstop=2
set tabstop=2
set shiftwidth=2

set columns=180
set lines=50

set guifont=Inconsolata-dz:h12.00

"
" No see-through
"
if has("gui_running")
  set transp=0
endif

"
"  NERDTree (KEY: ,d)
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
autocmd User Rails        setlocal shiftwidth=2
autocmd User Rails        setlocal tabstop=2
autocmd User Rails        setlocal softtabstop=2

" Keep Block visually marked when indenting
nmap > ><CR>gv
nmap < <<CR>gv
vmap > ><CR>gv
vmap < <<CR>gv
