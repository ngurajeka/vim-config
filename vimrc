" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Coloscheme
" color monokai
" color badwolf
" let g:badwolf_darkgutter = 1
" let g:badwolf_tabline = 0
" let g:badwolf_html_link_underline = 0
" let g:badwolf_css_props_highlight = 1

color sierra

" Syntax Highlighting
filetype off
filetype plugin indent on
syntax on

set cindent

" Line Numbers
set number
set nowrap

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set cc=80

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
let g:ctrlp_max_height = 15
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

let g:go_fmt_command = "goimports"
let g:go_term_mode = "split"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

nmap <leader>sw<left>  :topleft  vnew<CR>

autocmd BufWritePre * :%s/\s\+$//e

":nmap <c-l> :%s/^\s*/&&
map <F7> mzgg=G`w
map <space> viw
"let g:sierra_Campfire = 1
map <c-s-n> :vnew<enter>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <F5> mz:e!<enter>
