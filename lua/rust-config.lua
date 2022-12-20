local rt = require('rust-tools')
rt.setup({
    hover_actions = {
        auto_focus = true
    },
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<leader>ch", function() 
          rt.hover_actions.hover_actions()
          rt.hover_actions.hover_actions()
      end
          , { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

vim.g.coq_settings = {
    auto_start = true,
    clients = {
        lsp = {
          enabled = true,
        },
        tree_sitter = {
          enabled = true,
    	},
    }
}
require('coq')
