set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set mouse=
set ttymouse=
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
set term=xterm-256color
set updatetime=300
set signcolumn=yes
set autoread
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«,eol:¬,nbsp:_
set shortmess+=c
set backspace=indent,eol,start


command Gitg !git lg1
command Gits !git status
command Gitd !git difftool -y --tool=vimdiff %
command Gitds !git difftool -y --staged --tool=vimdiff %
command Gitdp !git difftool -y HEAD^ HEAD --tool=vimdiff %
command Chrome !open -a 'google chrome' %
command Safari !open -a 'safari' %

vnoremap <leader>y :w !pbcopy<CR><CR>

syntax on
filetype plugin indent on

autocmd Filetype make setlocal noexpandtab

"" colorscheme
colorscheme codedark
packadd vim-code-dark

"" statusline
let g:airline_theme = 'codedark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0
nnoremap <silent> g] :bnext!<Enter>
nnoremap <silent> g[ :bprevious!<Enter>

packadd vim-fugitive
packadd vim-airline
packadd vim-airline-themes


"" nerdtree
let NERDTreeIgnore = [".pyc"]
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
packadd nerdtree-git-plugin
packadd nerdtree

"" typescript
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag =1
packadd typescript-vim
packadd vim-jsx-pretty

"" javascript
let g:javascript_plugin_jsdoc = 1
packadd vim-javascript

"" git-blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
packadd git-blame.vim

"" rust
let g:rustfmt_autosave = 1
packadd rust.vim

"" json
packadd vim-jsonc

"" toml
packadd vim-toml

"" hbs
packadd vim-ember-hbs

"" golang
au filetype go set listchars=tab:\ \ ,trail:\ \,extends:»,precedes:«,eol:¬,nbsp:_
packadd vim-go

source ~/.vim/coc.vim
source ~/.vim/snippets.vim
packadd coc.nvim
