" ------------------------------------------------------------------------------
" # Plugins
" ------------------------------------------------------------------------------

Plug 'junegunn/fzf.vim'

Plug 'jesseleite/vim-agriculture'

Plug 'jesseleite/vim-noh'


Plug 'jesseleite/vim-agriculture'

Plug 'jesseleite/vim-noh'

Plug 'jesseleite/vim-sourcery'

Plug 'fatih/vim-go'

Plug 'kdheepak/lazygit.vim'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-sensible'

Plug 'frazrepo/vim-rainbow'

Plug 'preservim/nerdcommenter'

Plug 'nvim-lua/plenary.nvim'

Plug 'chriskempson/base16-vim'

Plug 'chiel92/vim-autoformat'

Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/edge'
Plug 'daylerees/colour-schemes', {'rt': 'vim/' }
Plug 'lifepillar/vim-gruvbox8'
Plug 'NLKNguyen/papercolor-theme'

Plug 'tpope/vim-commentary'

Plug 'theprimeagen/harpoon'

Plug 'Olical/vim-enmasse'

" Plug 'svermeulen/vim-subversive'

Plug 'itchyny/lightline.vim'
Plug 'max-baz/lightline-ale'

Plug 'wakatime/vim-wakatime'

Plug 'sebdah/vim-delve'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-snippets'
" Plug 'neoclide/coc-tsserver'
" Plug 'neoclide/coc-css'
" Plug 'neoclide/coc-highlight'
Plug 'dense-analysis/ale'

Plug 'bfrg/vim-c-cpp-modern'

Plug 'ryanoasis/vim-devicons'

Plug 'puremourning/vimspector'

Plug 'raimondi/delimitmate'

Plug 'go-delve/delve'

Plug 'tpope/vim-dispatch'

Plug 'vim-scripts/a.vim'

Plug 'bounceme/poppy.vim'

Plug 'chrisbra/unicode.vim'

Plug  'stefandtw/quickfix-reflector.vim'

Plug 'markonm/traces.vim'

Plug 'itchyny/vim-cursorword'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'cdelledonne/vim-cmake'

" Plug 'preservim/vim-pencil'

Plug 'liuchengxu/vista.vim'

Plug 'cdelledonne/vim-cmake'

" Config: sourcery
let g:sourcery#disable_sourcing_on_boot = 0
let g:sourcery#disable_autosourcing_on_save = 0

" Config: agriculture
let g:agriculture#ag_options = '--case-sensitive'

" Config: ale
set omnifunc=ale#completion#OmniFunc
let g:ale_linters_explicit = 1
let g:ale_fixers_explicit = 1
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = ' X'
let g:ale_sign_warning = ' ⚠'
let g:ale_hover_to_preview = 0
let g:ale_floating_preview = 1
let g:ale_set_balloons = 1
let g:ale_c_clangformat_executable = '/usr/bin/clang-format'
let g:ale_linters = {
			\   'sh':    ['shellcheck'],
			\   'zsh':   ['shellcheck'],
			\   'vue':   ['eslint', 'prettier'],
			\   'javascript': ['eslint', 'prettier'],
			\   'typescript': ['eslint', 'prettier'],
			\   'c':     ['clang', 'clang'],
			\   'cpp':   ['clang', 'clang'],
			\}
let g:ale_fixers = {
			\   'sh':    ['shfmt'],
			\   'zsh':   ['shfmt'],
			\   'vue':   ['prettier', 'eslint'],
			\   'javascript': ['prettier', 'eslint'],
			\   'typescript': ['prettier', 'eslint'],
			\   'c':     ['clang-format'],
			\   'cpp':   ['clang-format'],
			\}
let g:ale_fix_on_save = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_root_markers = [
			\ 'compile_commands.json',
			\ 'CMakeLists.txt',
			\ 'Makefile',
			\ 'package.json',
			\ 'pyproject.toml',
			\ '.clang-format',
			\ '.ale-root'
			\ ]


" Config: autoformat
au BufWrite * :Autoformat

" Config: rainbowh
let g:rainbow_active = 1

" Config: seoul256
let g:seoul256_background = 234

" Config: go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_doc_popup = 'vsplit'

" Config: edge
let g:edge_style = 'neon'
let g:edge_better_performance = 1
let g:lightline = {'colorscheme' : 'neon'}


" Config: lightline
let g:lightline = {
			\'colorscheme': 'PaperColor',
			\'active': {
			\  'left': [ [ 'mode', 'paste'],
			\            [ 'gitbranch', 'readonly', 'filename', 'modified' ]
			\  ]
			\ },
			\'component_function': {
			\  'gitbranch': 'FugitiveHead'
			\}
			\ }
let g:lightline.component_expand = {
			\  'linter_checking': 'lightline#ale#checking',
			\  'linter_infos': 'lightline#ale#infos',
			\  'linter_warnings': 'lightline#ale#warnings',
			\  'linter_errors': 'lightline#ale#errors',
			\  'linter_ok': 'lightline#ale#ok',
			\ }
let g:lightline.component_type = {
			\     'linter_checking': 'right',
			\     'linter_infos': 'right',
			\     'linter_warnings': 'warning',
			\     'linter_errors': 'error',
			\     'linter_ok': 'right',
			\ }
let g:lightline.active = {
			\ 'right': [
			\[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
			\            [ 'lineinfo' ],
			\            [ 'percent' ],
			\            [ 'fileformat', 'fileencoding', 'filetype'] ] }
