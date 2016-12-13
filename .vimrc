:imap jk <Esc>
:nmap s :w<CR>
:set ic
:set number "Display line numbers
:nnoremap <tab> :e#<CR>
:nnoremap <F4> :NERDTreeToggle<CR>
:nnoremap <F5> :TagbarToggle<CR>
:nnoremap <F6> :GundoToggle<CR>

" :nnoremap <F6> :Goyo<CR>

" Use UTF8
:set encoding=utf-8

" Tabs
set tabstop=4 expandtab shiftwidth=4

" Folding
:setlocal foldmethod=syntax
:nnoremap <space> za
:nnoremap <space><space> zR

" Search settings
:set incsearch
:set smartcase

" Bash like completion
:set wildmode=longest:full,full
:set wildmenu

" Switch tabs
:nnoremap <F7> gt

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
Plug 'rdnetto/YCM-Generator', {'branch' : 'stable'}
Plug 'tmhedberg/SimpylFold'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
" Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-grepper'
call plug#end()

" Use solarized theme
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" Set Ycm Shortcuts
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jf :YcmForceCompileAndDiagnostics<CR>

" Use airline statusline all the time
" set laststatus=2

" Remain in Gundo
let g:gundo_return_on_revert = 0

" Sets updatetime lower (default 4000)
" such that gitgutter refreshes more often
set updatetime=1000

" Grepper options 
let g:grepper = { 'highlight': 1 }
:nmap gs <plug>(GrepperOperator)

