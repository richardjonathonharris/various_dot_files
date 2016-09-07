set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
colorscheme molokai
syntax enable

set number
set showcmd
set cursorline
highlight Cursorline cterm=NONE ctermbg=darkblue ctermfg=white
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch
let g:vim_markdown_folding_disabled = 1

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","

execute pathogen#infect()
