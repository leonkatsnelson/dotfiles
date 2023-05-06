local lsp = require('lsp-zero').preset({"recommended"})

lsp.set_preferences({
})

lsp.set_sign_icons({
    error='✘',
    warn='!',
    hint='⚑',
    info='I'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()