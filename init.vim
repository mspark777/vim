set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set mouse=
set clipboard^=unnamed,unnamedplus
set expandtab
set showmode
set showcmd
set cmdheight=1
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
set smartindent
set textwidth=80
set colorcolumn=+1
set laststatus=2
set formatoptions-=t
set updatetime=300
set signcolumn=yes
set autoread
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«,eol:¬,nbsp:_
set shortmess+=c
set backspace=indent,eol,start
set guicursor=

command Gitg !git lg1
command Gits !git status
command Gitd !git difftool -y --tool=vimdiff %
command Gitds !git difftool -y --staged --tool=vimdiff %
command Gitdp !git difftool -y HEAD^ HEAD --tool=vimdiff %

syntax on
filetype plugin indent on

autocmd Filetype make setlocal noexpandtab

"" colorscheme
let g:airline_theme = 'codedark'
colorscheme codedark

"" nerdtree
let NERDTreeIgnore = [".pyc"]
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

"" statusline
let g:airline_theme = 'codedark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0
nnoremap <silent> g] :bnext!<Enter>
nnoremap <silent> g[ :bprevious!<Enter>

"" typescript
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag =1

"" javascript
let g:javascript_plugin_jsdoc = 1


"" rust
let g:rustfmt_autosave = 1


"" golang
au filetype go set listchars=tab:\ \ ,trail:\ \,extends:»,precedes:«,eol:¬,nbsp:_

"" blamer.nvim
let g:blamer_enabled = 1
let g:blamer_show_in_visual_modes = 0

"" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'

source ~/.config/nvim/coc.vim
