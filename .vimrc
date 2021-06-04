set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

set backspace=indent,eol,start

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1  && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | 
    \ quit | endif

set encoding=UTF-8
let g:airline_theme='tomorrow'
let g:airline_theme#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
    \ "auto_complete_deplay": 5,
    \ "candidate_marks": [ 'A', 'S', 'D', 'F', 'G' ],
    \ "min_pattern_length": 1,
    \ })
inoremap <expr>A    pumvisible() ?
\ deoplete#insert_candidate(0) : 'A'
inoremap <expr>S    pumvisible() ?
\ deoplete#insert_candidate(1) : 'S'
inoremap <expr>D    pumvisible() ?
\ deoplete#insert_candidate(2) : 'D'
inoremap <expr>F    pumvisible() ?
\ deoplete#insert_candidate(3) : 'F'
inoremap <expr>G    pumvisible() ?
\ deoplete#insert_candidate(4) : 'G'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_lazy_update = 350
let g:ctrlp_clear_chace_on_exit = 0
let g:ctrlp_max_files = 0
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1

set rtp+=/usr/local/opt/fzf
