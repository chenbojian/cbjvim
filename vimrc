set nocompatible
syntax on
filetype off
set rtp+=~/vimfiles/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set nu
"���ñ���
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin-1
if has("win32")
    set fenc=chinese
else
    set fileencoding=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���console�������
language messages zh_CN.utf-8
set termencoding=chinese

"set fileencodings=utf-8,ucs-bom,chinese
"��������
set langmenu=zh_CN.UTF-8
"�����﷨����
syntax enable
syntax on
filetype on
filetype plugin on
filetype plugin indent on
set nobackup
set autoindent
set smartindent
set cindent
set expandtab "�趨tabת��Ϊ�ո�
set shiftwidth=4 " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set softtabstop=4 " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�
set tabstop=4 " �趨 tab ����Ϊ 4
set lines=50
set columns=120
color cbjcolor 
set guifont=consolas:h11
set guifontwide=����:h12

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
