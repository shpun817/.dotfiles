" Disable comment continuation
autocmd FileType * set formatoptions-=cro

" Do not open created files in netrw
function! CreateInPreview()
    let l:filename = input("please enter filename: ")
    execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename 
    redraw!
endf
function! CreateInPreviewMapping()
    noremap <buffer>% :call CreateInPreview()<cr>
endfunction
autocmd filetype netrw call CreateInPreviewMapping()

" Automatically enter Terminal-mode
autocmd TermOpen * startinsert
