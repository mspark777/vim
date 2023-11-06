return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<C-h>"] = "which_key"
          }
        }
      }
    })

    telescope.load_extension("fzf")

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
