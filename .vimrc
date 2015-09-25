" ViM-Plug
call plug#begin('~/.vim/plugged')

    " Theme
    Plug 'altercation/vim-colors-solarized'

    " Global
    Plug 'tpope/vim-sensible'

    " Editor Features
    Plug 'mattn/emmet-vim', { 'for': 'html' }

    " IDE Features
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

" Settings
syntax enable
set background=dark
colorscheme solarized

" Leader
let mapleader=','

" Line numbers
set number
nmap <leader>n :set number!<CR>

" Tabs and spaces
set ts=4 sts=4 sw=4 expandtab

" Invisible charactors
set list
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,trail:\ ,extends:⋯,precedes:⋯,nbsp:¬

" Indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Autocmd
if has('autocmd')
    filetype on
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
endif
