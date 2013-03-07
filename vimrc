" Auto reload vim
autocmd! bufwritepost .vimrc source %
" General Config
let mapleader=","
set encoding=utf-8
set mouse=a
set nu
colorscheme zenburn
set laststatus=2
" PATHOGEN SETTINGS
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" GUI CONFIG
set guioptions-=r
set guioptions-=L
" PYTHON SETTINGS 
set autoindent
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set clipboard+=unnamed
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0
let g:syntastic_python_checkers = ['flake8']
set foldmethod=indent
set foldlevel=79
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
" PYTHON BINDING
autocmd Filetype python noremap <C-i>oimport pdb; pdb.set_trace();<Esc>
let g:pep8_map='<C-p>'
nmap <Leader>tf <Esc>:Pytest file<CR>
nmap <Leader>tc <Esc>:Pytest class<CR>
nmap <Leader>tm <Esc>:Pytest method<CR>
nmap <Leader>tn <Esc>:Pytest next<CR>
nmap <Leader>tp <Esc>:Pytest previous<CR>
nmap <Leader>te <Esc>:Pytest error<CR>
" GENERIC BINDING
map <C-T> <Plug>TaskList
map <C-g> :GundoToggle<CR>
map <C-z> :NERDTreeToggle<CR>
nmap <A-j> gT
nmap <A-;> gt
nnoremap <D-j> :tabprevious<CR>
nnoremap <D-;>   :tabnext<CR>
" BUILD C/CPP FILES
nmap <C-b> :<C-U>make %:r && ./%:r<CR>


" ROPE
map <C-s>j :RopeGotoDefinition<CR>
map <C-s>r :RopeRename<CR>


" WIKI
nmap <C-v>w <Plug>VimwikiIndex
nmap <leader>wh :VimwikiAll2HTML<CR>
set nocompatible 
let g:vimwiki_list = [{'path':'/Users/david.doka/wiki/',
                        \ 'syntax':'markdown', 'ext':'.md'}]
