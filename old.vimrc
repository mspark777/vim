set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set mouse=v
set clipboard^=unnamed,unnamedplus
set expandtab
set showmode
set showcmd
set nobackup
set noswapfile
set nowritebackup
set cursorline
set ruler
set number
set norelativenumber
set lazyredraw
set title
set smartcase
set incsearch
set showmatch
set hlsearch
set autoread
set background=dark

syntax off
filetype plugin indent off

function SetMakefileOptions()
  setlocal noexpandtab
endfunction

autocmd Filetype make call SetMakefileOptions()
