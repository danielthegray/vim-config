set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set list
autocmd BufWritePre :call <SID>StripTrailingWhitespaces()
