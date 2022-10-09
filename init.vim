set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf8
set mouse=n
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
set termguicolors

syntax on
filetype plugin indent on

"" bultin json
let g:vim_json_conceal = 0

autocmd Filetype make setlocal noexpandtab

lua require('plugins')


"" barbar
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

"" gitsigns
nmap <leader>hp :Gitsigns preview_hunk<CR>

"" typescript
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag =1

"" javascript
let g:javascript_plugin_jsdoc = 1


"" rust
let g:rustfmt_autosave = 1


"" golang
au filetype go set listchars=tab:\ \ ,trail:\ \,extends:»,precedes:«,eol:¬,nbsp:_

"" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'

"" ctrlsf
let g:ctrlsf_default_view_mode = 'compact'
nmap <leader><C-P> <Plug>CtrlSFPrompt

source ~/.config/nvim/coc.vim
