set nocompatible              " be iMproved, required
filetype off                  " required

set smartcase

" Vim-Plug
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
" Initialize plugin system
call plug#end()

" NERDTree
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
set encoding=utf-8
set laststatus=2

" vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="wombat"

" YouCompleteMe
let g:ycm_server_python_interpreter = "/usr/bin/python3"

" vimtex
let g:vimtex_enabled = 1
let g:vimtex_compiler_method = "latexmk"
let g:tex_flavor = 'latex'
let maplocalleader = ","

" vim-notes
let g:notes_directories = ['~/cloud/Documents/USC/notes']

syntax on
filetype plugin indent on
source ~/.colemak.vim
