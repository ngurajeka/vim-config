" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Coloscheme
color monokai

" Syntax Highlighting
filetype off
filetype plugin indent on
syntax on

" Line Numbers
set number
set nowrap

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup files
set nobackup
set nowritebackup
set noswapfile


" Pathogen
call pathogen#infect()

" Vim Powerline
set laststatus=2

" ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Jedi vim
let g:jedi#usages_command = "<Leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Python folding
set nofoldenable
