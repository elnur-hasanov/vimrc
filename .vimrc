call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

" colorchemes
Plug 'morhetz/gruvbox'

call plug#end()

syntax enable
let g:mapleader=','
set mouse=a

colorscheme gruvbox
set background=dark

set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set showmatch
let python_highlight_all = 1

set hlsearch
set incsearch

set updatetime=100

" mapping
map <F3> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" settings
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set encoding=utf-8
