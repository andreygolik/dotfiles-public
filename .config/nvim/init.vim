call plug#begin('~/.config/nvim/bundle')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  "Plug 'altercation/vim-colors-solarized'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/emmet-vim'
" call PluginInstall to install new plugins
call plug#end()

let mapleader=" "

" Basics
set nowrap
set number relativenumber
filetype plugin indent on
syntax on

" Buffers
set showmatch
set ruler
set vb t_vb=
set splitbelow splitright
set scrolloff=3
set hidden

" Indent
set autoindent
set smartindent
set cindent

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

" Search
set showmatch
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Preferences

" Theme
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
set background=dark
colorscheme slate

" Encoding
set encoding=utf-8

let mapleader=" "

vnoremap < <gv
vnoremap > >gv

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Check file in shellcheck
map <leader>s :!clear && shellcheck %<CR>

" NerdTree
map <leader>t :NERDTreeToggle<CR>

" Save
nmap <silent> <F2> :w<CR>
imap <silent> <F2> <Esc>:w<CR><Ins><Right>
vmap <silent> <F2> <Esc>:w<CR>

" Exit
nmap <silent> <F10> :q<CR>
imap <silent> <F10> <Esc>:q<CR>
vmap <silent> <F10> <Esc>:q<CR>

" Automatically deletes all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e
