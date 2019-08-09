set nocompatible              " be iMproved, required
filetype off                  " required

set smartcase

" Vim-Plug
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'lervag/vimtex'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Initialize plugin system
call plug#end()

" vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="wombat"

" Deoplete
let g:deoplete#enable_at_startup = 1

" vimtex
let g:vimtex_enabled = 1
let g:vimtex_compiler_method = "latexmk"
let g:tex_flavor = 'latex'
let maplocalleader = ","
let g:vimtex_quickfix_autoclose_after_keystrokes = 2

" vim-notes
let g:notes_directories = ['~/cloud/Documents/USC/notes']

syntax on
filetype plugin indent on
source ~/.colemak.vim
