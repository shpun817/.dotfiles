syntax on
filetype plugin indent on

"Information on the following settings can be found with
":help set
set noswapfile
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4 "this is the level of autoindent, adjust to taste
set softtabstop=4
set ruler
set number
set relativenumber
set backspace=indent,eol,start
set visualbell
set vb t_vb="" "Make screen not flash on error

"Easily jump between .cpp and .h files with F12
map <F12> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
imap <F12> <Esc>:e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

"Search for visually selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
