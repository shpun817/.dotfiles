" Source vim-plug plugins
source ~/.config/nvim/vim-plug/plugins.vim

" Set up nvim-cmp the completion engine
source ~/.config/nvim/nvim-cmp/setup.vim

" Disable comment continuation
autocmd FileType * set formatoptions-=cro

" Show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Source the lua files
lua require("sanford")
