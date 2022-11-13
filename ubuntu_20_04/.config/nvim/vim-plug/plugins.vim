call plug#begin('~/.vim/plugged')

" Common config for Neovim's builtin language server client
Plug 'neovim/nvim-lspconfig'

" Completion Engine
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/nvim-cmp'

" Icons in autocomplete menu
Plug 'onsails/lspkind.nvim'

" VSCode's snippet feature implemented in nvim
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Commenting
Plug 'numToStr/Comment.nvim'

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
