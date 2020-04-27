set showcmd
set showmatch
colo pablo

" set nocompatible              " be iMproved, required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" fugitive
Plugin 'tpope/vim-fugitive'

" plugin for HTML
Plugin 'mattn/emmet-vim'
Plugin 'docunext/closetag.vim'

" react
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'ludovicchabant/vim-gutentags'
" {'do': 'npm install'}
Plugin 'kristijanhusak/vim-js-file-import'

" plugin for kotlin
Plugin 'udalov/kotlin-vim'

" plugin for golang/go
Plugin 'fatih/vim-go'

"vim solarized text colors
Plugin 'altercation/vim-colors-solarized'

" Nerdtree Plugin for file navigation
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" ------------------------------ General ------------------------
set nu
let mapleader=" "

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1

" Go stuff?
autocmd BufNewFile,BufRead *.go setf go
autocmd FileType go setl sw=2 ts=2 et

" ------------------------------- Cogs ----------------------------

syntax on
syntax enable
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
let g:gruvbox_improved_warnings=1
set background=dark
let g:gruvbox_contrast_dark ="hard"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
highlight Comment cterm=italic

" ------------------------------- Navigation -------------------------------
"  Use JKLH for navigation between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural splits
set splitbelow
set splitright


" ----------------------------- Easy Motion ----------------------------

let g:EasyMotion_do_mapping = 0 " Disable default mappings


" --------------------------------------------------------------------

" Vim easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" --- SQL
let g:sql_type_default = 'pgsql'

" JsBeautify
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>

" air-line plugin specific commands
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" javascript
let g:js_file_import_sort_after_insert = 1
let g:js_file_import_strip_file_extension = 0
let g:js_file_import_sort_after_insert = 1
"let g:js_file_import_no_mappings = 1
"nmap <g> <Plug>(JsGotoDefinition)

