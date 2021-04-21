call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'mrk21/yaml-vim'

" Initialize plugin system
call plug#end()

set encoding=UTF-8
let g:go_version_warning = 0
let g:coc_disable_startup_warning = 1


filetype plugin indent on

set number
syntax enable
colorscheme gruvbox
"colorscheme one

" go imports
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1

" Folding                    
set foldmethod=indent    

" NOTE:
" 1. perform -> python3 install.py --go-completer under plugins destination.
"
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif


set background=dark " for the dark version
"let g:airline_theme='gruvbox'
" set background=light " for the light version
"colorscheme one

