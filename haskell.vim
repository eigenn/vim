" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set smarttab                    "Indent instead of tab at start of line
set shiftround                  "Round spaces to nearest shiftwidth multiple
set nojoinspaces                "Don't convert spaces to tabs"

let g:haskell_conceal_wide = 1


let s:width = 80


function! HaskellModuleHeader(...)
        let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
            let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
                let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")
                    
                    return  repeat('-', s:width) . "\n" 
                        \       . "-- | \n" 
                        \       . "-- Module      : " . name . "\n"
                        \       . "-- Note        : " . note . "\n"
                        \       . "-- \n"
                        \       . "-- " . description . "\n"
                        \       . "-- \n"
                        \       . repeat('-', s:width) . "\n"
                        \       . "\n"

                endfunction


                nmap <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>"
