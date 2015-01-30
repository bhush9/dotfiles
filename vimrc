" File: bshah/.vimrc
" Author: Bhushan Shah
" Description: My personal vimrc
" Last Modified: January 25, 2015

" This vimrc is only for education purpose, if used as it is may explode your
" screen and kill kittens.

" Key mappings in this vimrc

" <F3>  - toggle NERDTree
" <F4>  - Paste mode toggle
" <F8>  - Toggles tagbar
" <F11> - toggles numbering

" <space> - toggles current fold
" <leader>n - Next buffer
" <leader>p - Previous buffer
" <leader>vi - Opens .vimrc to quickly edit it
" <leader>sv - Sources .vimrc
" <leader>" - Double quote current word
" <leader>' - Single quote current word
" <leader><space> - clears search highlighting

" first things first
set nocompatible
set encoding=utf-8
let g:mapleader="," " , is leader

" colors {{{
set t_Co=256 "256 colors
colorscheme gentooish "gentooish colorscheme
highlight CursorLine term=none cterm=none
highlight SignColumn term=underline ctermfg=250 ctermbg=235 guifg=DarkBlue guibg=Grey
syntax enable "syntax highlighting
" }}}

" spaces and tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
" }}}

" UI config {{{
set number
set cursorline
filetype plugin on
set wildmenu
set showmatch
set laststatus=2
set noshowmode
set modelines=1
" }}}

" Searching {{{
set incsearch
set hlsearch
nnoremap <silent> <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable
set foldmethod=indent
nnoremap <space> za
" }}}

" CtrlP {{{
let g:ctrlp_extensions = ['tag', 'quickfix']
let g:ctrlp_switch_buffer = 0
"}}}

" NERDTree {{{
let g:NERDTreeWinSize = 40
let g:NERDTreeDirArrows = 0
nnoremap <silent> <F3> :NERDTreeToggle<CR>
"}}}

" Key mappings {{{
nnoremap <silent> <F4> :set paste!<CR>
nnoremap <silent> <F11> :set number!<CR>
nnoremap <silent> <F8> :TagbarToggle<cr>
nnoremap <silent> <leader>n :bnext<CR>
nnoremap <silent> <leader>p :bprevious<CR>
nnoremap <silent> <leader>vi :split $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"}}}

" Powerline {{{
let g:Powerline_symbols = 'fancy'
" }}}

" Syntastic {{{
let g:syntastic_mode_map = { "mode": "passive" }
"}}}

" Tagbar {{{
set tags=./tags,tags
let g:tagbar_width = 50
let g:tagbar_autoclose = 1
" Useful but little annoying
" let g:tagbar_autopreview = 1
 "}}}

" Auto commands {{{
if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    autocmd BufWinEnter * if &previewwindow | setlocal nonumber | endif
    function PreviewWindow()
        setlocal nonumber
    endfunction
endif
"}}}

" UltiSnip Settings {{{
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"}}}

" Remove when you get used to it
" Strict Mappings {{{
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"nnoremap <Left> <nop>
"nnoremap <Right> <nop>
" }}}

" vim:foldmethod=marker:foldlevel=0
