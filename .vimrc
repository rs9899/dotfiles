" Download Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' 			" vundle default

" Coloring
Plugin 'flazz/vim-colorschemes' 		" colorschemes set to pick from
Plugin 'phanviet/vim-monokai-pro' 		" another colorscheme
Plugin 'vim-airline/vim-airline' 		" status bar
Plugin 'vim-airline/vim-airline-themes' " multiple theme to pick from


" Productive
Plugin 'sheerun/vim-polyglot' 			" Language pack for multiple
Plugin 'kien/ctrlp.vim'					" Plugin for search nearby file in the project
Plugin 'preservim/nerdtree'				" File browser inside vim
Plugin 'vim-scripts/IndexedSearch'		" At match #N out of M matches

" Python specific
Plugin 'vim-scripts/indentpython.vim'	" Caring for indentation
Plugin 'tmhedberg/SimpylFold'			" Code initially folded, helps with code reading


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

let mapleader = "," " Elect a new leader cause you can :P

" Use :vs <filename> to open a file in side window
set splitbelow
set splitright
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" Flag unnecessary white space
autocmd ColorScheme * highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Airline stting
let g:airline_theme='simple'

" Some environment setting
syntax on
set number
set relativenumber
set paste
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set termguicolors
set noerrorbells
set fileformat=unix
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Colour ColorScheme
colorscheme molokai
set background=dark


" Shortcuts
nnoremap <leader><space> :NERDTreeToggle<CR> " nerdtree
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

