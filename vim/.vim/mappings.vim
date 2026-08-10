" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------

" " Map leader
let mapleader = "\<Space>"

" Source file
:nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <silent> <leader>sv :source $MYVIMRC<cr>

" Compiler
" nnoremap <leader>cl :FloatermNew --autoclose=0 clang++ % -o %< && ./%<<CR>
nnoremap <leader>cl :FloatermNew --autoclose=0 cargo run<<CR>

" " Exit insert mode
imap jk <Esc>

" " Vertical split
smap <silent> <Leader>v :vsplit<CR>

" " Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>

" " Exit
nnoremap <silent> <Leader>qq :q<CR>
nnoremap <C-c> :q<CR>

" " Tabs
nnoremap <silent> <Tab> :tabnext<CR>
nnoremap <silent> <S-Tab> :tabprevious<CR>
nnoremap <silent> <Leader>t :tabnew<CR>

vnoremap <Leader>s :sort<CR>

" " TExplorer
nnoremap <silent><Leader>e :Lexplore<CR>

" " Mappings: fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>h :Helptags!<CR>

" " Mappings: lazygit
nnoremap <silent> <leader>gg :FloatermNew --width=0.9 --height=0.9 lazygit<CR>

" " Search project with ag
" " Mappings: agriculture
nmap <Leader>/ <Plug>AgRawSearch
nmap <Leader>/ <Plug>AgRawVisualSelection
nmap <Leader>* <Plug>AgRawWordUnderCursor

": subversive
" nmap s <plug>(SubversiveSubstitute)
" nmap ss <plug>(SubversiveSubstituteLine)
" nmap S <plug>(SubversiveSubstituteToEndOfLine)

" " Mappings: go
autocmd FileType go nmap <leader>b  <Plug>
autocmd FileType go nmap <leader>r  <Plug>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" " Mappings: dispatch
nnoremap <silent> <leader>xx :Dispatch<CR>

" "Mappings: flutter
nnoremap <leader>fa :FlutterRun<CR>
nnoremap <leader>fq :FlutterQuit<CR>
nnoremap <leader>fr :FlutterHotReload<CR>
nnoremap <leader>fR :FlutterHotRestart<CR>
nnoremap <leader>fD :FlutterVisualDebug<CR>

" "Mappings: easymotion
map <Leader> <Plug>(easymotion-prefix)
