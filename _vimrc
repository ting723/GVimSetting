"""""""""""""""""""""""ZLW Gvim 设置""""""""""""""""""

"原生设置
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

""""""""""""""""""""""""插件管理"""""""""""""""    
set rtp+=/vimfiles/autoload/vundle/
call vundle#rc()
"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'

"PowerLine插件 状态栏增强显示
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powline_symbols='fancy'


"markdown
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'terryma/vim-multiple-cursors'

"""""""""""""""""""""""""便捷设置"""""""""""""""""""""
"每次保存后立即生效
autocmd! bufwritepost _vimrc source %

"history文件中需要记录的行数为1024
set history=102

"与windows共享剪贴板
set clipboard+=unnamed

"在状态栏显示输入的命令
set showcmd

set t_Co=256
"""""""""""""""""""""""""搜索与替换""""""""""""""""""""

"搜索时高亮显示被找到的文本
set hls

"搜索时在未完全输入完毕时，即开始检索
set is
 
"""""""""""""""""""""""""图形界面设置""""""""""""""""""""""""""""""""""

"右键单击显示快捷菜单
set mousemodel-=popup

"隐藏工具栏
set guioptions-=T

"隐藏菜单栏
set guioptions-=m

"隐藏左侧滚动条
set guioptions-=L

"隐藏右侧滚动条
set guioptions-=r

"隐藏底部滚动条
set guioptions-=bh

"隐藏Tab栏
set showtabline=0

"设置支持鼠标
set mouse=a

"标尺
set ru 

"""""""""""""""""""""""""文件属性"""""""""""""""""""""""""""""""""""""""
"设定文件浏览器目录为当前目录
set autochdir

"设置无备份
set nobackup

" 设置编码
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8
"set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,chinese

""""""""""""""""""""""""文档属性设置"""""""""""""""""""""""""""""""""""

"主题
colo molokai

"开启语法检测
syntax on

"打开语法高亮
syntax enable

"侦测文件类型
filetype off

"载入文件类型插件
filetype plugin indent on

"为特定文件类型载入相关缩进文件
filetype indent on

"带有如下符号的单词不要被换行分割
set iskeyword+=_,%,$,@,#,-

"设置当文件被改动时自动载入
set autoread

"高亮当前行
set cursorline

"高亮当前列
set cursorcolumn

"添加行号
set nu

"设置Tab键的宽度为4
set ts=4

"设置字体
set guifont=Monaco:h11

"indent删除行首缩进
"start 解决i键进入Insert模式后,无法删除非本次i模式输入字符
"eol 可删除前一行行末的回车
set backspace=indent,eol,start	

"自动缩进的时候,缩进尺寸为4个空格
set sw=4

"编辑时将所有的Tab替换为空格,已存的文件，不会被替换，如想替换，则:retab
set et

"设置单词都在同一行显示
set lbr

"打开断行对亚洲语言的支持
"m表示允许在两个汉字之间断行,即使汉字之间没有出现空格
"B表示将两行合并为一行时,汉字与汉字之间不要补空格
set fo+=mB

"显示括号配对情况,输入后括号后,光标在前括号上短暂闪烁,然后跳回
set sm

"不折行
set nowrap

"显示括号配对情况
set showmatch

"设置自动缩进
set autoindent


