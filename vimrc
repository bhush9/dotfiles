" enable syntax highlight
syntax enable

" Set up preffered tab stops
set tabstop=4
set softtabstop=4
set expandtab

set encoding=utf8

"Turn on autoindent
set autoindent

"turn on modeline
set modeline

"Show line numbers
set number

"Show airline/powerline always
set laststatus=2

"vim-airline always shows it
set noshowmode

"tunr wildmenu on
set wildmenu

"confirm before closing
set confirm

"Highlight searched stuff
set hlsearch

set t_Co=256

set background=dark
"setup gentooish colorscheme
colorscheme gentooish

"Always show tabline
set showtabline=2

"higlight current cursor line
set cursorline
highlight CursorLine cterm=NONE

"set nerdtree window size big
let g:NERDTreeWinSize=40

"Fancy nerdtree arrows looks really odd
let g:NERDTreeDirArrows=0

"Let syntastic run in passive mode
let g:syntastic_mode_map = { "mode": "passive" }

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

"Okay! thats sin but..!
set mouse=a
