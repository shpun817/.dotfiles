let g:netrw_banner = 0 " Disable banner
let g:netrw_liststyle = 3 " Tree listing
let g:netrw_browse_split = 4 " Use previous window
let g:netrw_altv = 1 " Right splitting
let g:netrw_winsize = 15 " Width (%)
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' " Line numbers
augroup ProjectDrawer " Auto open explorer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END
