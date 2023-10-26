set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf8
set termencoding=utf8
set fileencoding=utf8
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
set listchars=tab:>-,trail:•,extends:»,precedes:«,eol:¬,nbsp:_
set shortmess+=c
set backspace=indent,eol,start
set guicursor=
set termguicolors
set exrc
set secure
set nofoldenable

let g:loaded_ruby_provider = 0
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0

syntax on
filetype plugin indent on

autocmd Filetype make setlocal noexpandtab

if has("wsl")
  let g:clipboard = {
    \   'name': 'WslClipboard',
    \   'copy': {
    \      '+': 'clip.exe',
    \      '*': 'clip.exe',
    \    },
    \   'paste': {
    \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \   },
    \   'cache_enabled': 0,
    \ }
endif

"" bultin json
let g:vim_json_conceal = 0

"" barbar
if has('macunix')
  nnoremap <silent> <ESC>, <Cmd>BufferPrevious<CR>
  nnoremap <silent> <ESC>. <Cmd>BufferNext<CR>
  nnoremap <silent> <ESC>c <Cmd>BufferClose<CR>
  nnoremap <silent> <ESC>< <Cmd>BufferMovePrevious<CR>
  nnoremap <silent> <ESC>> <Cmd>BufferMoveNext<CR>
else
  nnoremap <silent> <A-,> <Cmd>BufferPrevious<CR>
  nnoremap <silent> <A-.> <Cmd>BufferNext<CR>
  nnoremap <silent> <A-c> <Cmd>BufferClose<CR>
  nnoremap <silent> <A-<> <Cmd>BufferMovePrevious<CR>
  nnoremap <silent> <A->> <Cmd>BufferMoveNext<CR>
endif

"" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" gitsigns
nmap <leader>hp :Gitsigns preview_hunk<CR>

"" golang
au filetype go set listchars=tab:\ \ ,trail:\ \,extends:»,precedes:«,eol:¬,nbsp:_

"" dap
nnoremap <silent> <Leader>dc <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <Leader>dC <Cmd>lua require'dap'.clear_breakpoints()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>

"" rest-nvim
nnoremap RN <Plug>RestNvim
nnoremap RNP <Plug>RestNvimPreview

"" packer
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

let g:coc_global_extensions = ['coc-tsserver', 'coc-go', 'coc-pyright', 'coc-sumneko-lua', 'coc-sh', 'coc-css', 'coc-git', 'coc-html', 'coc-json', 'coc-yaml', 'coc-eslint', 'coc-docker', 'coc-swagger', 'coc-svg', 'coc-toml', 'coc-snippets', 'coc-prettier', '@yaegassy/coc-tailwindcss3']

lua require('setup')
