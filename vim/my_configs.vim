set nu

" -------------------------------------------------
" NERDTree config
" -------------------------------------------------

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeTreeShowHidden=1
let NERDTreeWinPos='left'
let NERDTreeStatusLine='statusline'
let NERDTreeHighlightCursorline=1
let NERDTreeShowFiles=1

nmap " :NERDTreeToggle<CR>
" -------------------------------------------------
let python_highlight_all=1
syntax on

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set encoding=utf-8

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" --------------------------------------------------
" Config for javascript development
" --------------------------------------------------
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" -------------------------------------------------

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let g:SimpylFold_docstring_preview=1

py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"-----------------------------------------------------
"Start Python PEP 8 stuff
"-----------------------------------------------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"---------------------------------------------------
"Not for python PEP 8
"---------------------------------------------------

"js stuff"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"---------------------------------------------------
"Performance adjustment for vue
"---------------------------------------------------

let g:vue_disable_pre_processors=1

" autocmd for .vue files (fix the highlight text)
autocmd FileType vue syntax sync fromstart

let g:airline#extensions#tabline#left_sep = '> '

let g:airline#extensions#tabline#left_alt_sep = '> '
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_theme='powerlineish'

let g:airline#extensions#tabline#enabled = 1

let g:airline_highlighting_cache = 1


"---------------------------------------------------
" Key bindings
" --------------------------------------------------

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


"Nerd fonts
set guifont=UbuntuMono\ Nerd\ Font\ 14
let g:airline_powerline_fonts = 1

