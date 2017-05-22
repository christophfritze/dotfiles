" be iMproved
set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-syntastic/syntastic'
Plugin 'wkentaro/conque.vim'

call vundle#end()

filetype plugin indent on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set number
set backspace=indent,eol,start
set noshowmode
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

let mapleader = ","

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" Uncomment the next line if your terminal is not configured for solarized
let g:solarized_termcolors=256

" Set the colorscheme
"colorscheme solarized

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the solarized theme for the Airline status bar
let g:airline_theme='solarized'

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" ----- scrooloose/syntastic settings -----
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


