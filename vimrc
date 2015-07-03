set nocompatible
syntax on
filetype off
if has("win32")
    set rtp+=~/vimfiles/bundle/vundle/
else
    set rtp+=~/.vim/bundle/vundle/
endif
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()
filetype plugin indent on
set nu
source $VIMRUNTIME/vimrc_example.vim
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin-1
set fileencoding=utf-8
if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language message zh_CN.utf-8
    set termencoding=chinese
    set langmenu=zh_CN.UTF-8
else
    set undodir = "/tmp/"
endif
syntax enable
syntax on
filetype on
filetype plugin on
filetype plugin indent on
set nobackup
set autoindent
set smartindent
set cindent
set expandtab 
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 
color cbjcolor 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=grey15 ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey8 ctermbg=233
