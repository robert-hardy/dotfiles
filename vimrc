set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
call vundle#end()
filetype plugin on


" = ALE
let g:ale_linters = {}
let g:ale_linters_explicit = 1
let g:ale_linters['python'] = ['flake8', 'mypy']
let g:ale_python_flake8_executable = '/Users/robert/vimvenv/bin/flake8'
let g:ale_python_mypy_executable = '/Users/robert/vimvenv/bin/mypy'
let g:ale_linters['tex'] = []
let g:ale_linters['yaml'] = []

set clipboard=unnamed

" Path Completion ====
set path=.
set path+=/git/foo

" Appearance ====
syntax on
set laststatus=2
set tw=0
set formatoptions-=t
set number
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set visualbell
set hidden
set showcmd

" Filtype stuff ====
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set textwidth=120
set fileformat=unix

au BufNewFile,BufRead *.py
\ setlocal tabstop=4
\ | setlocal softtabstop=4
\ | setlocal shiftwidth=4
\ | setlocal textwidth=120
\ | setlocal expandtab
\ | setlocal autoindent
\ | setlocal fileformat=unix

" Other ====
set tags=/Users/robert/git/tags

" Remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e
