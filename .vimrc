:imap jk <Esc>
:nmap s :w<CR>
:set ic
:set number "Display line numbers
:nnoremap <F5> :GundoToggle<CR>
:nnoremap <F6> :TlistToggle<CR>

" :nnoremap <F6> :Goyo<CR>

" Use UTF8
:set encoding=utf-8

" Tabs
set tabstop=4 expandtab shiftwidth=4

" Folding
:setlocal foldmethod=syntax
:nnoremap <space> za

" Search settings
:set incsearch
:set smartcase

" Switch tabs
:nnoremap <F7> gt
:nnoremap <F8> gT

" Switch windows faster
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-H> <C-W><C-H>
:nnoremap <C-L> <C-W><C-L>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/gundo.vim'
Plug 'junegunn/goyo.vim'
Plug 'valloric/youcompleteme'
Plug 'tmhedberg/SimpylFold'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'taglist.vim'
call plug#end()

" Use solarized theme
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" Use airline statusline all the time
" set laststatus=2

" Remain in Gundo
let g:gundo_return_on_revert = 0

