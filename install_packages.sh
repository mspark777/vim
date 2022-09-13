STARTDIR="$1"
mkdir -p ${STARTDIR}

cd ${STARTDIR}
git clone --depth=1 https://github.com/preservim/nerdtree.git
git clone --depth=1 https://github.com/Xuyuanp/nerdtree-git-plugin.git
git clone --depth=1 https://github.com/tomasiser/vim-code-dark.git
git clone --depth=1 https://github.com/vim-airline/vim-airline.git
git clone --depth=1 https://github.com/vim-airline/vim-airline-themes.git
git clone --depth=1 https://github.com/tpope/vim-fugitive.git
git clone --depth=1 https://github.com/pangloss/vim-javascript.git
git clone --depth=1 https://github.com/leafgarland/typescript-vim.git
git clone --depth=1 https://github.com/MaxMEllon/vim-jsx-pretty.git
git clone --depth=1 https://github.com/rust-lang/rust.vim.git
git clone --depth=1 https://github.com/joukevandermaas/vim-ember-hbs.git
git clone --depth=1 https://github.com/fatih/vim-go.git
git clone --depth=1 https://github.com/vim-python/python-syntax.git
git clone --depth=1 https://github.com/APZelos/blamer.nvim.git
# It must be installed at last.
git clone --branch release --depth=1 https://github.com/neoclide/coc.nvim.git
