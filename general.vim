" change leader \ to ;
let mapleader=' '

set nu
set relativenumber
" Highlight search results
set hlsearch
"  real time search result shown
set incsearch
map <LEADER><CR> :nohlsearch<CR>
" Ignore case when searching
set ignorecase
" When searching try to be samrt about cases
set smartcase
" Show matching brackets when text indicator is over them
set showmatch
" 搜索到文件两端时不重新搜索
set expandtab
" 1 tab = 4 spaces
" Set <<  and >> shift width 4
set shiftwidth=4
set tabstop=4
" Be smart when using tabs
set smarttab

set nocompatible
" 检测文件类型
filetype on
filetype indent on 
filetype plugin on 
filetype plugin indent on 
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" enable syntax highlighting
syntax enable
" auto syntax highlight
syntax on

" allow to switch buffers without saving
set hidden

" 智能缩进
set smartindent

" set cmd window height :( cmd )
set cmdheight=1
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" --------------------
" vim涉及字符显示的选项有三个，fileencoding文件字符编码，encoding缓冲区字符编码，termencoding终端字符编码。  
"
" 　　vim显示字符的顺序:（探测文件编码，从fileencodings里面选择最合适的编码赋值给fileencoding）按fileencoding编码读取文件->将读取到的内容转成encoding编码->将encoding编码转换成termencoding打印到终端->终端(我们平时主要使用的是securecrt)按设置的编码(一般是utf8)显示字符。
" --------------------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencoding=utf-8
set termencoding=utf-8

"搜索到文件两端时不重新搜索
" set nowrapscan
" 不突出显示当前行
set nocursorline
" Use spaces instead of tabs

" Tab operation
map <tab> gt
map <S-tab> gT

" format
nmap <silent> <leader>fm gg=G''
vmap <leader>fm =

" Fast quiting without saving
nnoremap <leader>q :q<cr>
nnoremap <leader><leader>qq :q!<cr>
nnoremap <leader>w :w<cr>

" cusor mvoement in insertmode
" inoremap <c-h> <left>
" inoremap <c-l> <right>
" inoremap <c-j> <c-o>gj
" inoremap <c-k> <c-o>gk
" inoremap <c-j> <up>
" inoremap <c-k> <down>



" Ctrl+a
nnoremap <silent> <C-a> ggvG$

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

" Ctrl+v
nmap <silent> <C-v> "+p
imap <silent> <C-v> <C-r>+
" 命令行模式
cmap <C-v> <C-r>+

" Ctrl+x
nmap <silent> <C-x> "+dd
vmap <silent> <C-x> "+d


"switch windows
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l
"nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
nmap wh <C-w>h
nmap wl <C-w>l
nmap wj <C-w>j
nmap wk <C-w>k

" 屏幕滚动时在光标上下方保留5行预览代码
set so=5

set autochdir
set cursorline
set showcmd
set wildmenu
" 使能鼠标操作
set mouse=a

" 设置锚点
map <Leader><Leader>m <Esc>/<++><CR>:nohlsearch<CR>c4l

nnoremap <Leader><Leader>a A
