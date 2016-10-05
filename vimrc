"Vundle stuff"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'tpope/vim-dispatch'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


syntax enable
colorscheme jellybeans
set relativenumber
set number

set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=2
set tabstop=2

set background=dark

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright
set laststatus=2
set scrolloff=4

let mapleader = "\<Space>"
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>

let g:rspec_command = "Dispatch rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
