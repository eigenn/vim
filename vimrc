" General Config
set mouse=a
set nu
colo xoria256
:set guifont=*

" Mapping for python config

set autoindent
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set clipboard+=unnamed
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" PATHOGEN SETTINGS
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" CODE FOLDING
set foldmethod=indent
set foldlevel=99

" TASK LIST
map <C-T> <Plug>TaskList
map <C-g> :GundoToggle<CR>

" Syntax Highlighting and Validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
let g:pyflakes_use_quickfix = 0

" PEP 8
let g:pep8_map='<C-p>'


" Tab Completion and Documentation
"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"NERD Tree
map <C-a> :NERDTreeToggle<CR>

" ROPE
"
map <C-s>j :RopeGotoDefinition<CR>
map <C-s>r :RopeRename<CR>

" ACK
nmap <C-s>a <Esc>:Ack!

" GIT

" Execute the tests
 nmap <Leader>tf <Esc>:Pytest file<CR>
 nmap <Leader>tc <Esc>:Pytest class<CR>
 nmap <Leader>tm <Esc>:Pytest method<CR>
 " cycle through test errors
 nmap <Leader>tn <Esc>:Pytest next<CR>
 nmap <Leader>tp <Esc>:Pytest previous<CR>
 nmap <Leader>te <Esc>:Pytest error<CR>

" Add the virtualenv's site-packages to vim path
 py << EOF
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
