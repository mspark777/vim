set -e

rm -rf elixir-ls
git clone --depth=1 https://github.com/elixir-lsp/elixir-ls.git elixir-ls
cd elixir-ls
yes | mix deps.get
yes | mix compile
yes | mix elixir_ls.release -o release
