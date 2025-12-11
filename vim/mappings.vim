" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------

" " Map leader
let mapleader = "\<Space>"

" " Exit insert mode
imap jk <Esc>

" " Vertical split
nmap <silent> <Leader>v :vsplit<CR>

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
nnoremap <silent><Leader>e :Texplore<CR>

" " Mappings: fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>h :Helptags!<CR>

" " Mappings: lazygit
nnoremap <silent> <leader>gg :LazyGit<CR>

" " Search project with ag
" " Mappings: agriculture
nmap <Leader>/ <Plug>AgRawSearch
nmap <Leader>/ <Plug>AgRawVisualSelection
nmap <Leader>* <Plug>AgRawWordUnderCursor

" Mappings: subversive
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

" Mappings: go
autocmd FileType go nmap <leader>b  <Plug>
autocmd FileType go nmap <leader>r  <Plug>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
