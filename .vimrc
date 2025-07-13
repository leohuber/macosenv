" VERSION=DEVELOPMENT_VERSION

" Enable syntax highlighting
syntax on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Enable mouse support
set mouse=a

" Enable line wrapping
set wrap 

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

" Show matching parentheses
set showmatch

" Enable auto-completion menu
set completeopt=menuone,noselect

" Enable file type detection
filetype plugin indent on

" Set clipboard to use system clipboard
set clipboard=unnamedplus

" Enable persistent undo
set undofile

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Show the mode you are on the last line.
set showmode
