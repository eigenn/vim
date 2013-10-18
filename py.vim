au FileType python set foldlevel=79
au FileType python set autoindent
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set expandtab
au FileType python set tabstop=4
au FileType python set smarttab
set omnifunc=pythoncomplete#Complete
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
