" A setup when i had good knowledge about vim.

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'neovimhaskell/haskell-vim'
Plug 'hashivim/vim-terraform'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

set encoding=UTF-8
let g:go_version_warning = 0
let g:coc_disable_startup_warning = 1


syntax on
set number
filetype plugin indent on

"" Turn-on dracula color scheme
syntax on
color dracula

"----------------- mark down -------------
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively

" -------------------- terraform -------------------
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


"-------- Nerdtree --------------
map <C-g> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ------ easy-motion -------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"-------------- haskell ----------------------
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1

" Stylish-Haskell
let g:stylishask_on_save = 1
augroup Haskell
  au FileType haskell setl sw=2 ts=2 et
augroup END

" Cabal Indentation
let g:cabal_indent_section = 2

" go imports
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1

" You Complete Me (YCM)
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" Folding                    
set foldmethod=indent    

" NOTE:
" 1. perform -> python3 install.py --go-completer under plugins destination.
" 2. :help fold-commands to checkout how folds works.


