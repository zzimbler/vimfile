call pathogen#infect()

syntax on
filetype on
filetype plugin on
filetype indent on

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
	" turn on spell checking for these files
	autocmd FileType tex setlocal spell spelllang=en_us
endif


" always switch to current directory
set autochdir

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

set nocompatible

" Indenting
set autoindent
set smartindent

set tabstop=3
set shiftwidth=3
set softtabstop=3

" Visual
set number
set nohls
set showcmd

set backspace=indent,eol,start
set showmatch

" status line stuff
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Fonts and window options
if has("gui_running")
	set gfn=Courier_New:h9:cANSI
	colorscheme slate
	set guioptions-=T	" remove toolbar
endif

set bg=dark	

" remap sequence to escape insert mode
inoremap jk <Esc>

" no longer press shift to enter commands
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" easy split screen nav
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" change curser highlight colors for match parens
highlight MatchParen ctermbg=4

" directories
set backupdir=~/.vim/backup
set directory=~/.vim/temp

" no error bells
set noerrorbells

" wild menu on bottom
set wildmenu
set wildmode=list:longest,full
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*.swp,*~

" use mouse everywhere
set mouse=a

" map tab keys
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Up> :tabnew<CR>
nnoremap <silent> <C-Down> :tabclose<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" map the function keys to switch tabs
nnoremap <F2> 1gt
nnoremap <F3> 2gt
nnoremap <F4> 3gt
nnoremap <F5> 4gt
nnoremap <F6> 5gt
nnoremap <F7> 6gt
nnoremap <F8> 7gt
nnoremap <F9> 8gt
nnoremap <F10> 9t
nnoremap <F11> 10gt
nnoremap <F12> 11gt

" center on searchs
map N Nzz
map n nzz

" map space to something more useful
nnoremap <space> za

