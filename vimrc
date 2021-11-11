set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set mouse=a
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
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«


command Gitg !git lg1
command Gits !git status
command Gitd !git difftool -y --tool=vimdiff %
command Gitds !git difftool -y --staged --tool=vimdiff %
command Gitdp !git difftool -y HEAD^ HEAD --tool=vimdiff %
command Chrome !open -a 'google chrome' %
command Safari !open -a 'safari' %

syntax on
filetype plugin indent on

"" colorscheme
packadd vim-code-dark
colorscheme codedark

"" statusline
let g:airline_theme = 'codedark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0
packadd vim-fugitive
packadd vim-airline
packadd vim-airline-themes
nnoremap <silent> g] :bnext!<Enter>
nnoremap <silent> g[ :bprevious!<Enter>

"" nerdtree
let NERDTreeIgnore = [".DS_Store", ".git$", ".vscode", ".pyc"]
let NERDTreeShowHidden=1
packadd nerdtree-git-plugin
packadd nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

"" typescript
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag =1
packadd typescript-vim
packadd vim-jsx-pretty

"" javascript
let g:javascript_plugin_jsdoc = 1
packadd vim-javascript

"" python
packadd python-syntax

"" git-blame
packadd git-blame.vim
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

""rust
let g:rustfmt_autosave = 1
packadd rust.vim

let g:livedown_browser = "chrome"
packadd vim-livedown
nmap <silent> gm :LivedownToggle<CR>


packadd coc.nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
