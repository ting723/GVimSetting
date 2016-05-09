""""""""基本设置"""""""""
" 不兼容vi
set nocompatible

"与windows共享剪贴板
set clipboard+=unnamed

" 不要备份文件
set nobackup

" history文件中需要记录的行数为1024
set history=1024

"在状态栏显示输入的命令
set showcmd

" 颜色设置
set t_Co=256

"设定文件浏览器目录为当前目录
set autochdir

" 设置默认目录
set directory=$HOME

" 启动时就进入用户目录
cd $HOME

""""""""窗口"""""""""""""

"隐藏右键单击显示快捷菜单
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


"""""""插件管理""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'plasticboy/vim-markdown'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'jsbeautify'
" 中文帮助
Plug 'asins/vimcdoc'
" ##### 自动根据当前打开文件切换工作目录                                                                                                     
Plug 'airblade/vim-rooter'                                                                                                                 
let g:rooter_disable_map = 1 
call plug#end()


"PowerLine插件设置
set laststatus=2
set t_Co=256
let g:Powline_symbols='unicode'

"jsbeautify setting
map <F4> :call JsBeautify()<cr> 
nnoremap <F4> :call g:Jsbeautify()<cr><cr>

""""""""map命令映射"""""""""

nmap <C-k> :call InStr()<CR><CR>
"""""""主题,背景,字体""""

"主题
colo molokai

"开启语法检测
syntax on

"打开语法高亮
syntax enable

"侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

"为特定文件类型载入相关缩进文件
filetype indent on

"设置当文件被改动时自动载入
set autoread

"带有如下符号的单词不要被换行分割
set iskeyword+=_,%,$,@,#,-

"设置字体
set guifont=Monaco:h11

"高亮当前行
set cursorline

"高亮当前列
set cursorcolumn

"设置tab长度为4个空格
set ts=4

"显示括号配对情况,输入后括号后,光标在前括号上短暂闪烁,然后跳回
set sm

"不折行
set nowrap

"显示行号
set nu

"标尺
set ru 

"indent删除行首缩进
"start 解决i键进入Insert模式后,无法删除非本次i模式输入字符
"eol 可删除前一行行末的回车
set backspace=indent,eol,start

"自动缩进的时候,缩进尺寸为4个空格
set sw=4

"设置单词都在同一行显示
set lbr

"显示括号配对情况
set showmatch

"设置自动缩进
set autoindent

"打开断行对亚洲语言的支持
"m表示允许在两个汉字之间断行,即使汉字之间没有出现空格
"B表示将两行合并为一行时,汉字与汉字之间不要补空格
set fo+=mB

""""""""编码设置"""""""""

" vim内部编码,包括Buffer,菜单文本,消息文本
set encoding=utf-8

" Vim 中当前编辑的文件的字符编码方式，Vim 保存文件时也会将文件保存为这种字符编码方式 
set fileencoding=utf-8

" Vim自动探测fileencoding的顺序列表
set fileencodings=ucs-bom,utf-8,cp936,gbk,gb18030,gk2312,big5,euc-jp,euc-kr,latin1

" Vim 所工作的终端 (或者 Windows 的 Console 窗口) 的字符编码方式
set termencoding=utf-8

" 指定语言
language messages zh_CN.utf-8

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"""""""""""""""""""""""""搜索与替换""""""""""""""""""""

"搜索时高亮显示被找到的文本
set hls

"搜索时在未完全输入完毕时，即开始检索
set is


