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

" Backspace
set bs=2

" Mouse
set mouse=a

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
colorscheme zenburn

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
" =================== PYTHON SETTINGS ==================== "
" ======================================================== "

au FileType python set foldlevel=79
au FileType python set autoindent
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set expandtab
au FileType python set tabstop=4
au FileType python set smarttab
au FileType python set omnifunc=pythoncomplete#Complete
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set colorcolumn=80
autocmd BufRead *.py highlight ColorColumn ctermbg=DarkRed
set completeopt=menuone,longest,preview
autocmd Filetype python noremap <leader>pdb oimport pdb; pdb.set_trace();<Esc>

" ======================================================== "
" =================== C/CPP SETTINGS ===================== "
" ======================================================== "

nmap <C-b> :<C-U>make %:r && ./%:r<CR>

" ======================================================== "
" =================== PLUGIN SETTINGS ==================== "
" ======================================================== "

" NERDTREE
let NERDTreeIgnore=['\.pyc', '\.swo$', '\.swp$']
map <C-z> :NERDTreeToggle<CR>

" VIM WIKI
let g:vimwiki_list = [{'path': '~/.vim/wiki/', 'path_html': '~/.vim/html_wiki/'}]

" PEP8
let g:pep8_map='<C-p>'

" PYTEST
nmap <Leader>tf <Esc>:Pytest file<CR>
nmap <Leader>tc <Esc>:Pytest class<CR>
nmap <Leader>tm <Esc>:Pytest method<CR>
nmap <Leader>tn <Esc>:Pytest next<CR>
nmap <Leader>tp <Esc>:Pytest previous<CR>
nmap <Leader>te <Esc>:Pytest error<CR>

" SYNTASTIC
let g:syntastic_python_checkers = ['flake8']

" TASKLIST
map <leader>tl <Plug>TaskList

" GUNDO
map <leader>g :GundoToggle<CR>

" TAGBAR
nmap <leader>d :TagbarToggle<CR>

" ROPE
map <C-s>rr :RopeRename<CR>
map <leader>rd :RopeGotoDefinition<CR>

" SUPERTAB
let g:SuperTabDefaultCompletionType = "context"
