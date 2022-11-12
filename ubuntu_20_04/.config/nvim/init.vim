" vim-plug section starts

call plug#begin('~/.vim/plugged')

" General autocomplete engine
Plug 'ycm-core/YouCompleteMe'

" Auto closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Game to practice basic movements
Plug 'ThePrimeagen/vim-be-good'

" Minesweeper
Plug 'seandewar/nvimesweeper'

" Telescope - Fuzzy file finder with content preview
Plug 'nvim-lua/plenary.nvim' " Required
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " Required
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } " Optional, for sorting performance

" Treesitter - better highlighting
Plug 'nvim-treesitter/nvim-treesitter'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

" vim-plug section ends

" Disable comment continuation
autocmd FileType * set formatoptions-=cro

" Show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Source the lua files
lua require("sanford")
