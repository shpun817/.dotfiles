" Source vim-plug plugins
source ~/.config/nvim/vim-plug/plugins.vim

" Set up nvim-cmp the completion engine
source ~/.config/nvim/nvim-cmp/setup.vim

" Run autocmd's
source ~/.config/nvim/autocmd.vim

" Show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Source the lua files
lua require("sanford")
