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
set smartindent
set textwidth=80
set colorcolumn=+1
set laststatus=2
set formatoptions-=t
set term=xterm-256color
set updatetime=300
set signcolumn=yes
set autoread


command Gitg !git lg1
command Gits !git status
command Gitd !git difftool -y --tool=vimdiff %
command Gitds !git difftool -y --staged --tool=vimdiff %
command Gitdp !git difftool -y HEAD^ HEAD --tool=vimdiff %
command Chrome !open -a 'google chrome' %
command Safari !open -a 'safari' %

syntax on
filetype plugin indent on

packadd gruvbox
colorscheme gruvbox
:set bg=dark

packadd nerdtree-git-plugin
packadd nerdtree
let NERDTreeIgnore = [".DS_Store", ".git$", ".vscode", ".pyc"]
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

"" required nodejs
packadd typescript-vim
packadd vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag =1

packadd vim-javascript
let g:javascript_plugin_jsdoc = 1

"" required python
packadd python-syntax

"" required rust
packadd rust.vim
let g:rustfmt_autosave = 1

packadd coc.nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
