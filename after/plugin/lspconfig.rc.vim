lua << EOF
local nvim_lsp = require'lspconfig'
local protocol = vim.lsp.protocol

function on_attach(client, bfnr)
	function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bfnr, ...) end
	function buf_set_option(...) vim.api.nvim_buf_set_option(bfnr, ...) end
	
	-- Mappings
	local options = { noremap = true, silent = true }
	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', options)
	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', options)
end

local capabilities = protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

nvim_lsp.tsserver.setup{
	on_attach = on_attach,
	capabilities = capabilities
}

nvim_lsp.pyright.setup{
	on_attach = on_attach,
	capabilities = capabilities
}

EOF
