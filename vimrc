" ======================================================== "
" ================= GENERIC VIM SETTINGS ================= "
" ======================================================== "
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" RELOAD VIMRC
noremap <leader>rv :so $MYVIMRC<CR>

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed"`

" SPELL
set spell spelllang=en_gb

" Backspace
set bs=2

" Mouse
set mouse=a

" The kileer of all the settings 
set autoread

" Rebind <Leader> key
let mapleader=","

" Tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Quick save
noremap <C-s> :update<CR>

" Encoding 
set encoding=utf-8

" Underline on curent line
set cursorline

" Color theme 
syntax enable
set background=dark
colorscheme solarized

" Alwasy show status
set laststatus=2

" Eneble Syntex hilight
filetype on
filetype plugin indent on
syntax on
set nocompatible

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Search History
set history=700
set undolevels=700

" Tab Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set foldlevel=79
set foldmethod=indent

" Disable stupid backup and swap files - they trigger too many events
set nobackup
set nowritebackup
set noswapfile
" ======================================================== "
" =================== PHATOGEN SETTINGS ================== "
" ======================================================== "

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ======================================================== "
" ===================== GUI SETTINGS ===================== "
" ======================================================== "

set guioptions-=r
set guioptions-=L

" ======================================================== "
" =================== PLUGIN SETTINGS ==================== "
" ======================================================== "
:imap jj <Esc>

" NERDTREE
let NERDTreeIgnore=['\.pyc', '\.swo$', '\.swp$']
map <C-x> :NERDTreeToggle<CR>

" TASKLIST
map <leader>tl <Plug>TaskList

" GUNDO
map <leader>g :GundoToggle<CR>

" TAGBAR
map <leader>tt :TagbarToggle<CR>

" SUPERTAB
let g:SuperTabDefaultCompletionType = "context"

" POWERLINE"
let Powerline_theme='long'
let Powerline_colorscheme='solarized16_dark'


autocmd FileType python source ~/.vim/py.vim
autocmd FileType haskell source ~/.vim/haskell.vim
autocmd FileType cpp source ~/.vim/cpp.vim
autocmd BufNewFile,BufRead *.json set ft=javascript
