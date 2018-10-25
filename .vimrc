set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
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

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set encoding=utf-8
set laststatus=2

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="base16_embers"

let g:ycm_server_python_interpreter = "/usr/bin/python2"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_server_python_interpreter = "/usr/bin/python3"

let g:vimtex_enabled = 1
let g:vimtex_compiler_method = "latexmk"
let g:tex_flavor = 'latex'
let maplocalleader = ","

let g:notes_directories = ['~/cloud/Documents/USC/notes']
map <C-n> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
source ~/.colemak.vim
