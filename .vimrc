set nocompatible              " be iMproved, required
syntax on
filetype indent plugin on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set number
set backspace=indent,eol,start
" no backup files
set nobackup
set nowb
set noswapfile
" no error sounds
set visualbell
set noerrorbells

" Always open in the last edited position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch
