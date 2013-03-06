" General Config
let mapleader=","
set encoding=utf-8
set mouse=a
set nu
colorscheme zenburn
let g:evervim_devtoken='S=s55:U=5d94d2:E=142e18e5417:C=13b89dd2817:P=1cd:A=en-devtoken:H=72b582eacefc84ade61d738296d2eb30'

" GUI CONFIG
set guioptions-=r
set guioptions-=L

" Mapping for python config

set autoindent
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set clipboard+=unnamed
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd Filetype python noremap <C-i> i import pdb; pdb.set_trace();<Esc>

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
let g:vimwiki_list = [{'path':'/Users/david.doka/wiki/',
                        \ 'syntax':'markdown', 'ext':'.md'}]

" Syntax Highlighting and Validation
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
let g:pyflakes_use_quickfix = 0

" PEP 8
let g:pep8_map='<C-p>'

" BUILD C/CPP FILES
nmap <C-b> :<C-U>make %:r && ./%:r<CR>

" POWERLINE
"let g:Powerline_symbols = 'fancy'

" Tab Completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"NERD Tree
map <C-z> :NERDTreeToggle<CR>
" TABS
nmap <A-j> gT
nmap <A-;> gt
nnoremap <D-j> :tabprevious<CR>
nnoremap <D-;>   :tabnext<CR>

" ROPE
map <C-s>j :RopeGotoDefinition<CR>
map <C-s>r :RopeRename<CR>

" ACK
nmap <C-s>a <Esc>:Ack!

" WIKI
nmap <C-v>w <Plug>VimwikiIndex
nmap <leader>wh :VimwikiAll2HTML<CR>
set nocompatible 

" Set copy and paste under tmux

" Execute the tests
 nmap <Leader>tf <Esc>:Pytest file<CR>
 nmap <Leader>tc <Esc>:Pytest class<CR>
 nmap <Leader>tm <Esc>:Pytest method<CR>
 " cycle through test errors
 nmap <Leader>tn <Esc>:Pytest next<CR>
 nmap <Leader>tp <Esc>:Pytest previous<CR>
 nmap <Leader>te <Esc>:Pytest error<CR>
