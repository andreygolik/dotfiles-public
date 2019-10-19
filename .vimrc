"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" Basics
syntax on
filetype plugin on
filetype indent on
set nowrap
set linebreak
set number
set relativenumber

" Buffers
"set autowriteall           " save on exit
set ruler                   " отображение позиции курсора
set vb t_vb=                " отключить пищалку
set splitbelow splitright   " новое окно появляется внизу или справа
set showcmd                 " показывать введенные команды
set showmatch               " показывать совпадающую скобку
set scrolloff=5             " количество строк вокруг курсора
set autoread                " reload files changed outside vim
set hidden                  " hidden buffers

" Indentation
set autoindent
set smartindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Search
set showmatch
"set nohlsearch
set hlsearch
set incsearch
set ignorecase
set smartcase

" Folds
set nofoldenable
set foldmethod=indent
set foldlevel=25

" gvim
set guioptions-=m       " отключение меню
set guioptions-=T       " отключение тулбара

" Display tabs and trailing spaces
set list
set listchars=tab:→\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨
set showbreak=↪\

" Completion
set wildmenu

" Encoding
set encoding=utf-8
set ffs=unix,dos
set fencs=utf-8,cp1251,koi8-r,cp866

" Status Bar
set showmode
set laststatus=2        " always show
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P

" Mouse Support
set mouse=a
set mousemodel=popup
set mousehide

" viminfo
set viminfo='100,%,/50,:50,<50,h

set noswapfile
set nobackup
set nowb

" Automatically deletes all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","

" показывать выделение после сдвига
vnoremap < <gv
vnoremap > >gv

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Check file in shellcheck
map <leader>s :!clear && shellcheck %<CR>

" Save
nmap <silent> <F2> :w<CR>
imap <silent> <F2> <Esc>:w<CR><Ins><Right>
vmap <silent> <F2> <Esc>:w<CR>

" Exit
nmap <silent> <F10> :q<CR>
imap <silent> <F10> <Esc>:q<CR>
vmap <silent> <F10> <Esc>:q<CR>

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
