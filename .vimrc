" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" NERDTree remaps
nnoremap <C-t> :NERDTreeToggle<CR>

" Clipboard
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P

" File formating and encoding
set fileformat=unix
set encoding=utf-8

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Autocompletion
set wildmode=longest,list,full
set omnifunc=syntaxcomplete#Complete

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on/
syntax on
syntax enable

" 24-bit True Color
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors

set term=xterm-256color

" Colourschemes
"colorscheme badwolf
"colorscheme nord
"colorscheme onedark
colorscheme sublimemonokai

" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

set bg=dark

" show line numbers
set number relativenumber

" Highlight cursor line underneath the cursor horizontally
" set cursorline

" Highlight cursor line underneath the cursor vertically
set cursorcolumn

" Set shift width to 4 spaces
set shiftwidth=4

" indent when moving to the next line while writing code
set autoindent

" Use space charactes instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=5

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching through a file incrementally highlight matching character
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history (default 20)
" set history=100

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Rustfmt auto-run
let g:rustmft_autosave = 1
