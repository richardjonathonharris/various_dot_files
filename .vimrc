set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
colorscheme molokai
syntax enable
set list
set listchars=eol:↪

set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber

set showcmd
set cursorline
highlight Cursorline cterm=NONE ctermbg=darkblue ctermfg=white
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch
let g:vim_markdown_folding_disabled = 1
let g:jsx_ext_required = 0

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
execute pathogen#infect()
