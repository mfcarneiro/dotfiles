"
" Kali Dark — Vim Colorscheme
"

if exists("syntax_on")
	syntax reset
endif

set background=dark
let g:colors_name = "kali-dark"

" Palette (hex literals)
" Normal
" black   = 0x000000
" red     = 0xd54e53
" green   = 0xb9ca4a
" yellow  = 0xe6c547
" blue    = 0x7aa6da
" magenta = 0xc397d8
" cyan    = 0x70c0ba
" white   = 0xeaeaea

" Bright
" br_black   = 0x666666
" br_red     = 0xff3334
" br_green   = 0x9ec400
" br_yellow  = 0xe7c547
" br_blue    = 0x7aa6da
" br_magenta = 0xb77ee0
" br_cyan    = 0x54ced6
" br_white   = 0xffffff

" UI
hi Normal        guifg=#eaeaea guibg=#252422
hi Cursor        guifg=#000000 guibg=#252422
hi CursorLine    guibg=#0f1111 guibg=#252422
hi CursorColumn  guibg=#0f1111 guibg=#252422
hi LineNr        guifg=#666666 guibg=#252422
hi CursorLineNr  guifg=#7aa6da guibg=#252422
hi Visual        guibg=#1a1a1a guibg=#252422
hi StatusLine    guifg=#eaeaea guibg=#252422
hi StatusLineNC  guifg=#666666 guibg=#252422
hi VertSplit     guifg=#0f1111 guibg=#252422
hi Pmenu         guifg=#eaeaea guibg=#252422
hi PmenuSel      guifg=#000000 guibg=#252422

" Syntax
hi Comment       guifg=#666666 gui=italic
hi Constant      guifg=#d54e53
hi String        guifg=#b9ca4a
hi Number        guifg=#e6c547
hi Identifier    guifg=#eaeaea
hi Function      guifg=#c397d8
hi Keyword       guifg=#7aa6da
hi Type          guifg=#70c0ba
hi Statement     guifg=#7aa6da
hi PreProc       guifg=#c397d8
hi Special       guifg=#e6c547 guibg=#284b63
hi Todo          guifg=#000000 guibg=#e6c547
hi Delimiter	 guifg=#7aa6da
hi Operator	 guifg=#ff8800


augroup MyColors
	autocmd!
	autocmd ColorScheme * hi cppNamespace guifg=#ff8800 ctermfg=208
augroup END

"
" Tree-sitter (Neovim only)
"
if has('nvim')
	hi @comment      guifg=#666666 gui=italic
	hi @string       guifg=#b9ca4a
	hi @number       guifg=#e6c547
	hi @function     guifg=#c397d8
	hi @keyword      guifg=#7aa6da
	hi @type         guifg=#70c0ba
	hi @constant     guifg=#d54e53
	hi @variable     guifg=#eaeaea
endif
