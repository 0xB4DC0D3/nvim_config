require("telescope").setup({
  defaults = {
    file_ignore_patterns = { ".git" }
  },
  pickers = {
    live_grep = {
      additional_args = function(opts)
        return { "--hidden" }
      end
    }
  }
})

local telescope = require("telescope.builtin")
-- Telescope
vim.keymap.set('n', '<leader>ff', function() telescope.find_files({ hidden = true }) end, {})
vim.keymap.set('n', '<leader>fg', function() telescope.live_grep({ hidden = true }) end, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
