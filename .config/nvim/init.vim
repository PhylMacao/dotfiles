" PLUGINS {{{
" First define a helper function to make it readable when a plugin
" is only loaded for vscode or neovim

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin(stdpath('data') . '/plugged')

" Coding stuff
Plug 'neoclide/coc.nvim', Cond(!exists('g:vscode'), {'branch': 'release'})

" Other stuff
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Color scheme plugs
Plug 'sainnhe/everforest', Cond(exists('g:vscode'))
Plug 'morhetz/gruvbox', Cond(exists('g:vscode'))

" Games
Plug 'ThePrimeagen/vim-be-good'

" Initialize plugin system
call plug#end()
" }}}

if !exists('g:vscode')
    source ~/.config/nvim/neovimrc.vim
else
    source ~/.config/nvim/vscoderc.vim
endif

"vim:foldmethod=marker:foldlefel=0