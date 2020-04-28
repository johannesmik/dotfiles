:imap jk <Esc>
:nmap s :w<CR>
:set ic
:set number "Display line numbers
:nnoremap <tab> :e#<CR>
:nnoremap <F4> :NERDTreeToggle<CR>
:nnoremap <F5> :TagbarToggle<CR>
:nnoremap <F6> :Goyo<CR>

" Use UTF8
:set encoding=utf-8

" Tabs
set tabstop=4 expandtab shiftwidth=4

" Keeps cursor in the center of the screen
:set scrolloff=7

" Folding
:setlocal foldmethod=syntax
:nnoremap <space> za
:nnoremap <space><space> zR

" Search settings
:set incsearch
:set smartcase

" Replace visual selection with C-r
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Bash like completion
:set wildmode=longest:full,full
:set wildmenu

" Switch tabs
:nnoremap <F7> gT
:nnoremap <F8> gt

:set mouse=a

" Switch windows faster
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-H> <C-W><C-H>
:nnoremap <C-L> <C-W><C-L>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
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
Plug 'leafgarland/typescript-vim'
call plug#end()

" Use solarized theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" NERDTree
let NERDTreeChDirMode=2

" CtrlP
:nnoremap <c-u> :CtrlPTag<CR>
:let g:ctrlp_working_path_mode=''

" Set Ycm Shortcuts
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jf :YcmForceCompileAndDiagnostics<CR>

" Use airline statusline all the time
" set laststatus=2

" Sets updatetime lower (default 4000)
" such that gitgutter refreshes more often
set updatetime=1000

" Grepper options 
let g:grepper = { 'highlight': 1 }
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Set unknown files
autocmd BufRead,BufNewFile *.ops set filetype=sh
