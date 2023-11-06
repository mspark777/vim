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

let g:coc_global_extensions = ['coc-tsserver', 'coc-go', 'coc-pyright', 'coc-sumneko-lua', 'coc-sh', 'coc-css', 'coc-git', 'coc-html', 'coc-json', 'coc-yaml', 'coc-eslint', 'coc-docker', 'coc-swagger', 'coc-svg', 'coc-toml', 'coc-snippets', 'coc-prettier', 'coc-clangd', '@yaegassy/coc-tailwindcss3']

lua require('setup')
