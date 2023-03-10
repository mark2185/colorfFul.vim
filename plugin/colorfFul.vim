if exists('g:loaded_colorfFul')
    finish
endif
let g:loaded_colorfFul = 1

nnoremap <expr> <Plug>(colorfFul-f) colorfFul#FindWith('f')
nnoremap <expr> <Plug>(colorfFul-F) colorfFul#FindWith('F')
nnoremap <expr> <Plug>(colorfFul-t) colorfFul#FindWith('t')
nnoremap <expr> <Plug>(colorfFul-T) colorfFul#FindWith('T')

nmap f <plug>(colorfFul-f)
nmap F <plug>(colorfFul-F)
nmap t <plug>(colorfFul-t)
nmap T <plug>(colorfFul-T)

highlight default link ColorfFulMarker Search
