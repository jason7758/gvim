"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set fenc=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,sc-bom,euc-jp,cp936

"显示行号
set nu
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=100

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

"自动切换当前目录为当前文件所在的目录
set autochdir

" 侦测文件类型
filetype on


" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0
"在状态行显示命令行
set showcmd

" 命令行（在状态行下）的高度，默认为1
set cmdheight=2

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)


" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"Tags
set tags=./tags,./../tags,./../../tags,./**/tags,tags
"set tags=./tags,tags
""set tags+=/home/lijie/code/svn/leju/bbs.house.sina.com.cn/trunk/Tags

" visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv 

"映射F12键为行号的开关
map <F12> :set number!<CR>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

"nnoremap <C-c> :update<CR>
"cnoremap <C-c> <Esc>:update<CR>
"inoremap <C-c> <Esc>:update<CR>

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

" command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 输入:set list命令是应该显示些啥？
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol
set listchars=tab:>-,trail:-
"显示行尾的空格
highlight WhitespaceEOL ctermbg=red guibg=red 
match WhitespaceEOL /\s\+$/

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
"set cindent

" 制表符为4统一缩进为4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab

" 不要换行
set nowrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配色和字体
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable


"Some nice mapping to switch syntax (useful if one mixes different languages in one file)
map <leader>1 :set syntax=xhtml<cr>
map <leader>2 :set ft=javascript<cr>
map <leader>3 :set syntax=php<cr>
map <leader>4 :set syntax=python<cr>
map <leader>$ :syntax sync fromstart<cr>

autocmd BufEnter * :syntax sync fromstart

"Set font
set guifont=DejaVuSansMono\ 10

if has("gui_running")
  set guioptions-=T
  let psc_style='cool'
  "colorscheme oceandeep
  colorscheme neverland2-darker 
else
  colorscheme default 
endif
"Highlight current
if has("gui_running")
  set cursorline
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	""""""""""""""""""""""""""""""
	" OmniCppComplete
	""""""""""""""""""""""""""""""
	set completeopt=longest,menu
	let OmniCpp_DefaultNamespaces = ["std"]
	autocmd FileType python set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptomplete#CompleteJS
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS
	autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
	autocmd FileType php set omnifunc=phpcomplete#CompletePHP
	autocmd FileType c set omnifunc=ccomplete#Complete

   """"""""""""""""""""""""""""""
   " Minibuffer
   """"""""""""""""""""""""""""""
   let g:miniBufExplMapWindowNavVim = 1
   let g:miniBufExplMapWindowNavArrows = 1
   let g:miniBufExplMapCTabSwitchBufs = 1
   let g:miniBufExplModSelTarget = 1
   let g:bufExplorerSortBy = "name"
   autocmd BufRead,BufNew :call UMiniBufExplorer

    """"""""""""""""""""""""""""""  
    " subTab 
    "let g:SuperTabRetainCompletionType=2
    " 0 - 不记录上次的补全方式
    " 1 - 记住上次的补全方式,直到用其他的补全命令改变它
    " 2 - 记住上次的补全方式,直到按ESC退出插入模式为止"
    """"""""""""""""""""""""""""""  
    let g:SuperTabRetainCompletionType=2
    let g:SuperTabDefaultCompletionType="<C-X><C-O>"
    """"""""""""""""""""""""""""""  
    " Tag list (ctags)  
    """"""""""""""""""""""""""""""  
    map <F3> :TlistToggle<cr>
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'  
    let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的  
    let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim  
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口   
    let tlist_php_settings = 'php;c:class;i:interfaces;f:function;d:constant;v:variable' "tlist 显示内容及顺序设置
    """"""""""""""""""""""""""""""
   " NERDTree
   """"""""""""""""""""""""""""""
   map <F2> :NERDTreeToggle<CR>
   """"""""""""""""""""""""""""""
   "autocomplpop在 $, ->, :: 后需要出现自动补全  
   """"""""""""""""""""""""""""""
    if !exists('g:AutoComplPop_Behavior')

       let g:AutoComplPop_Behavior = {}
       let g:AutoComplPop_Behavior['php'] = []
       call add(g:AutoComplPop_Behavior['php'], {
                   \   'command'   : "\<C-x>\<C-o>", 
                   \   'pattern'   : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
                   \   'repeat'    : 0,
                   \})
    endif
   """"""""""""""""""""""""""""""""""""""
   " Convenience shortcuts for window ops
   """"""""""""""""""""""""""""""""""""""
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l
    " Collapse (like on a sidebar)
    map ,< <C-W>30<
    map ,> <C-W>30>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove the Windows ^M
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   """"""""""""""""""""""""""""""
   " Python section
   """"""""""""""""""""""""""""""
   "Run the current buffer in python - ie. on leader+space
   autocmd FileType python map <buffer> <leader><space> :w!<cr>:!python %<cr>
   "Python iMaps
   au FileType python set cindent
   au FileType python inoremap <buffer> $r return
   au FileType python inoremap <buffer> $s self
   au FileType python inoremap <buffer> $c ##<cr>#<space><cr>#<esc>kla
   au FileType python inoremap <buffer> $i import
   au FileType python inoremap <buffer> $p print
   au FileType python inoremap <buffer> $d """<cr>"""<esc>O

"""""""""""""""""""""""""""""""""""""""""""""""""""
" PDV 
"""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 


"""""""""""""""""""""""""""""""""""""""""""""""""""
" zend coding
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动gvim 自动最大化
"""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32')
    au GUIEnter * simalt ~x
else
    au GUIEnter * call MaximizeWindow()
endif
 
function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
