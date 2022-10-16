set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'lervag/vimtex'
call vundle#end()
filetype plugin on

" = airline
let g:airline_section_b = 'buffer: %{bufnr("%")}'

" = CtrlP
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_max_depth = 20
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'

" = ALE
" :ALEInfo is useful -- shows you all the settings that are being applied
let g:ale_fixers = {}
let g:ale_linters = {}
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1
let g:ale_linters['python'] = ['flake8', 'mypy']
let g:ale_python_flake8_executable = '/Users/robert/vimvenv/bin/flake8'
let g:ale_python_mypy_executable = '/Users/robert/vimvenv/bin/mypy'
let g:ale_linters['tex'] = []
let g:ale_linters['yaml'] = []

" = Bufferline
" let g:bufferline_echo = 0
" let g:bufferline_rotate = 2
" let g:bufferline_fixed_index = 0

" = ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set <A-F>=ƒ
set <A-A>=å
nnoremap <A-F> :Ack! -S -w <C-r>=expand('<cword>')<CR> ~/git<CR>
nnoremap <A-A> :Ack! -S -w <C-r>=expand('<cword>')<CR> ~/git
set <A-W>=∑
set <A-X>=≈
noremap <A-W> :resize +1<CR>
noremap <A-X> :resize -1<CR>
set <A-Q>=œ
noremap <A-Q> :cclose<CR>
noremap <A-Q><A-Q> :copen<CR>


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
set clipboard=unnamed
colorscheme delek
hi Folded ctermbg=Black ctermfg=DarkGrey

" Filtype stuff ====
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set textwidth=80
set fileformat=unix

au BufNewFile,BufRead *.py
\ setlocal tabstop=4
\ | setlocal softtabstop=4
\ | setlocal shiftwidth=4
\ | setlocal textwidth=120
\ | setlocal expandtab
\ | setlocal autoindent
\ | setlocal fileformat=unix
\ | setlocal foldmethod=indent

let g:tex_flavor = "latex"


" Other ====
set tags=~/git/tags

" Remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e
