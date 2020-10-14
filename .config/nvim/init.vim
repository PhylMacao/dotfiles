" My precious vimrc

" PLUGINS {{{
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Color scheme plugs
Plug 'sainnhe/forest-night'

" Games
Plug 'ThePrimeagen/vim-be-good'

" Initialize plugin system
call plug#end()
" }}}

" OPTIONS {{{
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nobackup
set nohlsearch
set cmdheight=2
set hidden 			" Enable hidden buffers
set backspace=indent,eol,start	" Make backspace work as you would expect.
set clipboard=unnamedplus	" Copy paste between vim and everything else
set number relativenumber
set ruler			" Always display the current cursor position in the lower right corner.
set showcmd			" Display an incomplete command in the lower right corner.
" programming and filetype stuff
filetype plugin indent on	" Enable file type detection and do language-dependent indenting.
syntax on
set smartindent
")" }}}

" COLOR {{{
" Important!!
if has('termguicolors')
	set termguicolors
endif
" The configuration options should be placed before `colorscheme forest-night`.
let g:forest_night_transparent_background = 1
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1
colorscheme forest-night

" Toggle transparent background
function! Toggle_transparent()
    if g:forest_night_transparent_background == 0
        let g:forest_night_transparent_background = 1
	colorscheme forest-night
    else
        let g:forest_night_transparent_background = 0
	colorscheme forest-night
    endif
endfunction
nnoremap <F1> : call Toggle_transparent()<CR>
" }}}

" KEYS {{{
"Use jk to escape 
inoremap jk <Esc>
inoremap kj <Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>gf :e <cfile><cr>

"I write Hungarian text m8
nnoremap É :
" }}}

" AUTOCALLS {{{
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" }}}

let g:vim_markdown_frontmatter=1 "for markdown files with yaml header.

" vim:foldmethod=marker:foldlevel=0
