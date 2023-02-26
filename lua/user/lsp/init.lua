local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.configs"
require("mason").setup()
require("mason-lspconfig").setup()
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require'lspconfig'.pyright.setup{}
--require'lspconfig'.jdtls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.marksman.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.omnisharp.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.angularls.setup{}
require'lspconfig'.tailwindcss.setup{}
require('tailwind-sorter').setup({
  on_save_enabled = true, -- If `true`, automatically enables on save sorting.
  on_save_pattern = { '*.html', '*.js', '*.jsx', '*.tsx', '*.twig', '*.hbs', '*.php', '*.heex' }, -- The file patterns to watch and sort.
  node_path = 'node',
})


