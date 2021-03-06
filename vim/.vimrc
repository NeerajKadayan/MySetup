call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'


" Initialize plugin system
call plug#end()

set encoding=UTF-8
let g:go_version_warning = 0
let g:coc_disable_startup_warning = 1

filetype plugin indent on

set number
syntax enable

" go imports
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1

" Folding                    
set foldmethod=indent    

" NOTE:
" 1. perform -> python3 install.py --go-completer under plugins destination.
