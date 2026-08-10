" ------------------------------------------------------------------------------
" # Plugins
" ------------------------------------------------------------------------------

Plug 'junegunn/fzf.vim'

Plug 'jesseleite/vim-agriculture'

Plug 'jesseleite/vim-noh'

Plug 'jesseleite/vim-sourcery'

Plug 'kdheepak/lazygit.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-sensible'

Plug 'frazrepo/vim-rainbow'

Plug 'preservim/nerdcommenter'

Plug 'nvim-lua/plenary.nvim'

Plug 'chriskempson/base16-vim'

Plug 'chiel92/vim-autoformat'

Plug 'romainl/Apprentice'

Plug 'tpope/vim-commentary'

Plug 'theprimeagen/harpoon'

Plug 'Olical/vim-enmasse'

Plug 'itchyny/lightline.vim'

Plug 'max-baz/lightline-ale'

Plug 'wakatime/vim-wakatime'

Plug 'sebdah/vim-delve'

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

Plug 'stefandtw/quickfix-reflector.vim'

Plug 'markonm/traces.vim'

Plug 'itchyny/vim-cursorword'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'cdelledonne/vim-cmake'

" Plug 'preservim/vim-pencil'

Plug 'liuchengxu/vista.vim'

Plug 'voldikss/vim-floaterm'

Plug 'natebosch/vim-lsc'

Plug 'elixir-lang/vim-elixir'

Plug 'tpope/vim-dadbod'

Plug 'easymotion/vim-easymotion'

Plug 'rust-lang/rust.vim'

" ------------------------------------------------------------------------------
" # Configs
" ------------------------------------------------------------------------------

" Config: sourcery
let g:sourcery#disable_sourcing_on_boot = 0
let g:sourcery#disable_autosourcing_on_save = 0

" Config: agriculture
let g:agriculture#ag_options = '--case-sensitive'

" Config: autoformat
au BufWrite * :Autoformat

" Config: rainbown
let g:rainbow_active = 1

" Config: seoul256
let g:seoul256_background = 234

" Config: lightline
let g:lightline = {
      \'colorscheme': 'apprentice',
      \'active': {
      \  'left': [ [ 'mode', 'paste'],
      \            [ 'gitbranch', 'readonly', 'filename', 'modified' ]
      \  ]
      \ }
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

" Config: lsc
let g:lsc_auto_map = v:true
let g:lsc_server_commands = {
      \ "elixir":"elixir-ls",
      \ "heex":"elixir-ls",
      \ "c": "clangd",
      \ "cpp": "clangd",
      \ "rust": "rust-analyzer",
      \}
" \  "go": {
" \    "command": "gopls serve",
" \    "log_level": -1,
" \    "suppress_stderr": v:true,
" \  },
" \}

" Config: rust
let g:rustfmt_autosave = 1
