"""""""""""""""""""""""ZLW Gvim ����""""""""""""""""""

"ԭ������
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

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

""""""""""""""""""""""""�������"""""""""""""""    
set rtp+=/vimfiles/autoload/vundle/
call vundle#rc()
"ʹ��Vundle������Vundle
Bundle 'gmarik/vundle'

"PowerLine��� ״̬����ǿ��ʾ
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powline_symbols='fancy'


"markdown
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'terryma/vim-multiple-cursors'

"""""""""""""""""""""""""�������"""""""""""""""""""""
"ÿ�α����������Ч
autocmd! bufwritepost _vimrc source %

"history�ļ�����Ҫ��¼������Ϊ1024
set history=102

"��windows���������
set clipboard+=unnamed

"��״̬����ʾ���������
set showcmd

set t_Co=256
"""""""""""""""""""""""""�������滻""""""""""""""""""""

"����ʱ������ʾ���ҵ����ı�
set hls

"����ʱ��δ��ȫ�������ʱ������ʼ����
set is
 
"""""""""""""""""""""""""ͼ�ν�������""""""""""""""""""""""""""""""""""

"�Ҽ�������ʾ��ݲ˵�
set mousemodel-=popup

"���ع�����
set guioptions-=T

"���ز˵���
set guioptions-=m

"������������
set guioptions-=L

"�����Ҳ������
set guioptions-=r

"���صײ�������
set guioptions-=bh

"����Tab��
set showtabline=0

"����֧�����
set mouse=a

"���
set ru 

"""""""""""""""""""""""""�ļ�����"""""""""""""""""""""""""""""""""""""""
"�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set autochdir

"�����ޱ���
set nobackup

" ���ñ���
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8
"set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,chinese

""""""""""""""""""""""""�ĵ���������"""""""""""""""""""""""""""""""""""

"����
colo molokai

"�����﷨���
syntax on

"���﷨����
syntax enable

"����ļ�����
filetype off

"�����ļ����Ͳ��
filetype plugin indent on

"Ϊ�ض��ļ�����������������ļ�
filetype indent on

"�������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,%,$,@,#,-

"���õ��ļ����Ķ�ʱ�Զ�����
set autoread

"������ǰ��
set cursorline

"������ǰ��
set cursorcolumn

"����к�
set nu

"����Tab���Ŀ��Ϊ4
set ts=4

"��������
set guifont=Monaco:h11

"indentɾ����������
"start ���i������Insertģʽ��,�޷�ɾ���Ǳ���iģʽ�����ַ�
"eol ��ɾ��ǰһ����ĩ�Ļس�
set backspace=indent,eol,start	

"�Զ�������ʱ��,�����ߴ�Ϊ4���ո�
set sw=4

"�༭ʱ�����е�Tab�滻Ϊ�ո�,�Ѵ���ļ������ᱻ�滻�������滻����:retab
set et

"���õ��ʶ���ͬһ����ʾ
set lbr

"�򿪶��ж��������Ե�֧��
"m��ʾ��������������֮�����,��ʹ����֮��û�г��ֿո�
"B��ʾ�����кϲ�Ϊһ��ʱ,�����뺺��֮�䲻Ҫ���ո�
set fo+=mB

"��ʾ����������,��������ź�,�����ǰ�����϶�����˸,Ȼ������
set sm

"������
set nowrap

"��ʾ����������
set showmatch

"�����Զ�����
set autoindent


