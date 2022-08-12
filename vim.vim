set term=xterm-256color
set ttymouse=

"" git-blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
packadd git-blame.vim
