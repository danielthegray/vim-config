setlocal shiftwidth=4
setlocal tabstop=4
set softtabstop=4
set noexpandtab
autocmd BufWritePre :call <SID>StripTrailingWhitespaces()
