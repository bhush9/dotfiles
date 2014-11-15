" enable syntax highlight
syntax enable

" Set up preffered tab stops
set tabstop=4
set softtabstop=4
set expandtab

"Turn on autoindent
set autoindent

"Show line numbers
set number

"Show airline/powerline always
set laststatus=2

"vim-airline always shows it
set noshowmode

"force 256 terminal colors
set t_Co=256

"setup gentooish colorscheme
colorscheme gentooish
let g:airline_theme='serene'

"set some unicode symbols for airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"set up branch and other fonts
let g:airline_powerline_fonts=0
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.whitespace = 'Ξ'

"Enable syntastic plugin
let g:airline#extensions#syntastic#enabled = 1

"Enable airline tabline
let g:airline#extensions#tabline#enabled = 1

"Always show tabline
set showtabline=2

"higlight current cursor line
set cursorline
highlight CursorLine cterm=NONE

"set nerdtree window size big
let g:NERDTreeWinSize=40

"use syntax fold method
set foldmethod=syntax

"open ultisnips editor in horizontal split
let g:UltiSnipsEditSplit='horizontal'

"if we have builddir inside current worktree, modify makeprg
if !isdirectory(getcwd()+"//build")
    set makeprg =cd\ build;\ make\ -j4
elseif
    set makeprg =make\ -j4
endif
