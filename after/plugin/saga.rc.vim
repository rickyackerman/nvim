lua << EOF
local saga = require'lspsaga'
saga.init_lsp_saga {
	error_sign = '',
	warn_sign = '',
	hint_sign = '',
	infor_sign = '',
	border_style = 'round'
}
EOF

nnoremap <silent>K <cmd>Lspsaga hover_doc<cr>
inoremap <silent><c-k> <cmd>Lspsaga signature_help<cr>
nnoremap <silent>gh <cmd>Lspsaga lsp_finder<cr>
nnoremap <silent>cn <cmd>Lspsaga rename<cr>
