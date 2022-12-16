local rt = require('rust-tools')
rt.setup()
rt.inlay_hints.set()
rt.inlay_hints.enable()


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




