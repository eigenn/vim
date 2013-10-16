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
" =============== EVERNOTE MARKDOWN WIKI ================= "
" ======================================================== "

noremap <leader>el <Esc>:tabe ~/.dot_files/evernote/<CR>
noremap <leader>eu <Esc>:!python ~/.dot_files/evernote_update.py<CR>
noremap <leader>erl <Esc>:!python ~/.dot_files/geeknote/geeknote.py notebook-list<CR>



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
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set colorcolumn=80
autocmd BufRead *.py highlight ColorColumn ctermbg=DarkRed
set completeopt=menuone,longest,preview
autocmd Filetype python noremap <leader>pdb oimport pdb; pdb.set_trace();<Esc>

" Add the virtualenv's site-packages to vim path
python << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,
                                 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" ======================================================== "
" =================== C/CPP SETTINGS ===================== "
" ======================================================== "

nmap <C-b> :<C-U>make %:r && ./%:r<CR>

" ======================================================== "
" =================== PLUGIN SETTINGS ==================== "
" ======================================================== "
:imap jj <Esc>

" NERDTREE
let NERDTreeIgnore=['\.pyc', '\.swo$', '\.swp$']
map <C-x> :NERDTreeToggle<CR>

" PYTEST
nmap <Leader>tf <Esc>:Pytest file<CR>
nmap <Leader>tc <Esc>:Pytest class<CR>
nmap <Leader>tm <Esc>:Pytest method<CR>
nmap <Leader>tn <Esc>:Pytest next<CR>
nmap <Leader>tp <Esc>:Pytest previous<CR>
nmap <Leader>te <Esc>:Pytest error<CR>

" JEDI
let g:jedi#goto_command = "<leader>jg"
let g:jedi#get_definition_command = "<leader>jd"
let g:jedi#pydoc = "<leader>doc"

" SYNTASTIC
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'

" TASKLIST
map <leader>tl <Plug>TaskList

" GUNDO
map <leader>g :GundoToggle<CR>

" TAGBAR
nmap <leader>d :TagbarToggle<CR>

" ROPE
map <leader>rr :RopeRename<CR>
map <leader>rd :RopeGotoDefinition<CR>

" SUPERTAB
let g:SuperTabDefaultCompletionType = "context"
