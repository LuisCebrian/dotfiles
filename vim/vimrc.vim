set encoding=utf-8
set scrolloff=3
set autoindent
set number
set relativenumber
set incsearch
set showmatch
set hlsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Color
set background=dark
set t_Co=256
"colorscheme nord
 
syntax on
filetype on
filetype plugin indent on " enable loading indent file for filetype
filetype plugin on

"Shortcut to save
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>

" Window movement.
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

"Remap VIM 0 to first non-blank character
map 0 ^
 
"Use the same clipboard as system
set clipboard=unnamedplus
 
"Rebind <Leader> key
let mapleader = ","

"Easy moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Better indentation
vnoremap < <gv
vnoremap > >gv

"Folding
nnoremap <space> za
vnoremap <space> zf
nnoremap <Leader><space> zi

"Disable comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

""""""""""
"FUNCTIONS
"""""""""""
 
"Windows movement. Create a split if
""it does not exist in the direction of the split
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
