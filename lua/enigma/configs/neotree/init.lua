vim.fn.sign_define("DiagnosticSignError",
  {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
  {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
  {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
  {text = "󰌵", texthl = "DiagnosticSignHint"})

require("neo-tree").setup({
  filesystem = {
    follow_current_file = {
      enabled = true
    },
    filtered_items = {
      visible = false,
      show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_by_name = {
        ".git"
      }
    },
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      }
    }
  },
  default_component_configs = {
    name = {
      use_git_status_colors = false
    },
    git_status = {
      symbols = {
        added     = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
        modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
        deleted   = "✖",-- this can only be used in the git_status source
        renamed   = "󰁕",-- this can only be used in the git_status source
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "󰄱",
        staged    = "",
        conflict  = "",
      }
    }
  },
})
