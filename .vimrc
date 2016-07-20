set nocompatible              " be iMproved, required
filetype off                  " required

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Base16
let base16colorspace=256
colorscheme base16-default-dark

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
