" ------------------------------------------------------------------------------
" # Plugins
" ------------------------------------------------------------------------------
Plug 'junegunn/fzf.vim'

Plug 'jesseleite/vim-agriculture'

Plug 'jesseleite/vim-noh'

Plug 'jesseleite/vim-sourcery'

Plug 'fatih/vim-go'

Plug 'kdheepak/lazygit.vim'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-surround'

Plug 'preservim/nerdcommenter'

Plug 'nvim-lua/plenary.nvim'

Plug 'chriskempson/base16-vim'

Plug 'chiel92/vim-autoformat'

Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-commentary'

Plug 'theprimeagen/harpoon'

Plug 'Olical/vim-enmasse'

Plug 'svermeulen/vim-subversive'

Plug 'shougo/neocomplete.vim'

Plug 'itchyny/lightline.vim'

Plug 'wakatime/vim-wakatime'

Plug 'sebdah/vim-delve'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc-tsserver'
Plug 'neoclide/coc-css'
Plug 'neoclide/coc-highlight'

Plug 'ryanoasis/vim-devicons'

Plug 'rip-rip/clang_complete'

Plug 'puremourning/vimspector'

Plug 'raimondi/delimitmate'

Plug 'go-delve/delve'

Plug 'tpope/vim-dispatch'

" Config: sourcery
let g:sourcery#disable_sourcing_on_boot = 0
let g:sourcery#disable_autosourcing_on_save = 0

" Config: agriculture
let g:agriculture#ag_options = '--case-sensitive'

" Config: autoformat
au BufWrite * :Autoformat

" Config: seoul256
let g:seoul256_background = 234

" Config: go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_doc_popup = 'vsplit'

" Config: lightline
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'gitbranch', 'readonly', 'filename', 'modified' ]
			\ ]
			\ },
			\ }

