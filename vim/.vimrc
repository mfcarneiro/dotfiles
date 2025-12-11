filetype plugin on
syntax on

set encoding=utf-8
set number
set relativenumber
set nobackup
set nowritebackup
set noswapfile
set noshowmode

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

call plug#begin()

source ~/.vim/plugins.vim

call plug#end()

call sourcery#init()

colo seoul256
