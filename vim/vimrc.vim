syntax on
set noerrorbells

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set autoindent
set incsearch
set showmatch
set cursorline

set clipboard=unnamedplus "Use the same clipboard as system

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord
set background=dark

"filetype on
"filetype plugin indent on " enable loading indent file for filetype
"filetype plugin on

"Shortcut to save
":nmap <c-s> :w<CR>
":imap <c-s> <Esc>:w<CR>a
":imap <c-s> <Esc><c-s>

"Remap VIM 0 to first non-blank character
"map 0 ^
 
"Rebind <Leader> key
"let mapleader = " "

"Easy moving between tabs
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>

"Better indentation
vnoremap < <gv
vnoremap > >gv

"Folding
"nnoremap <space> za
"vnoremap <space> zf
"nnoremap <Leader><space> zi

"Disable comment insertion
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""""""""""
"PLUGINS""
"""""""""""
 
"Airline settings"
"let g:airline_powerline_fonts = 1
"set laststatus=2
"let g:airline#extensions#tabline#enabled=1
"let g:tmuxline_preset = 'full'
"let g:airline#extensions#tmuxline#enabled=1
"let g:airline_section_error = ''
"let g:airline_section_warning = ''
