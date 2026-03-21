" Encoding
set encoding=utf-8
set fileencodings=utf-8,latin1

" Interface
set number
set relativenumber
set cursorline
set showcmd
set cmdheight=1
set laststatus=2
set showmatch
set noshowmode

" Indentation & tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set smartindent

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" File handling
set backup
set writebackup
set undofile
set undodir=~/.vim/undo
set swapfile
set history=1000
set nobackup
set nowritebackup
set noswapfile
set path+=**

" Performance & UX
set lazyredraw
set ttyfast
set updatetime=300
set timeoutlen=500

" Display & folding
set wrap
set linebreak
set sidescrolloff=8
set scrolloff=5
set foldmethod=indent
set foldlevel=99
set guicursor+=n-v-c:blinkon0

" Clipboard & mouse
set clipboard=unnamedplus
set mouse=a

" Completion
set completeopt=menu,menuone,noselect
set shortmess+=c

" Wildmenu & file navigation
set wildmenu
set wildmode=list:longest

" Colors & UI
syntax on

if has("termguicolors")
  set termguicolors
endif

set background=dark

call plug#begin()
source ~/dotfiles/vim/plugins.vim
call plug#end()

call sourcery#init()

colorscheme apprentice

" Plugins-friendly settings
filetype plugin indent on

" Ensure undodir exists (runs once)
if !isdirectory(expand("~/.vim/undo"))
  call mkdir(expand("~/.vim/undo"), "p")
endif

" Ensure transparent background
hi Normal guibg=NONE ctermbg=NONE

" Thin cursor on insert
let &t_SI = "\e[6 q"   " insert
let &t_EI = "\e[1 q"   " normal

" Tags
command! MakeTags !ctags -R .

" Netrw
let g:Netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_winsize = 18

