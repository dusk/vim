" vimrc

" basics
execute pathogen#infect()
filetype plugin indent on
set nocompatible
set number
syntax on
set ignorecase
set smartcase

" folding
set foldmethod=indent
set foldlevel=99
noremap <space> za

" color
set t_Co=256
set bg=dark
colorscheme diokai

" tabs spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set shiftround

set list
set listchars=tab:\▸\ ,trail:-,extends:#,nbsp:.

" hotkeys
let mapleader=","

" ag code search
let g:ackprg = 'ag --vimgrep'
let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_highlight=1
let g:ag_format="%f:%l:%m"

" python
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" macvim
set guifont=Envy\ Code\ R

" airline
let g:airline_theme = 'distinguished'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_mode_map = {'mode':'active','active_filetypes':['javascript','json','python'],'passive_filetypes':['html']}
