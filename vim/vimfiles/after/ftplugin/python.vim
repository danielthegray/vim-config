set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set list
set commentstring=#\ %s
autocmd BufWritePre :call <SID>StripTrailingWhitespaces()
