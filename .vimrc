let mapleader=";"	" 定义快捷键的前缀 <leader>
" w !sudo tee >/dev/null % " 使用 sudo 保存没有权限的文件

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

set autoread          " 文件修改之后自动载入
set nowrap 			" 取消换行
" 有一个或以上大写字母时仍大小写敏感  
set smartcase 
" 显示成对匹配
set showmatch 
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 右下角显示命令
set showcmd

" 左下角显示当前模式
set showmode

set mouse=a

" table 键长度
set tabstop=4
" 关闭消息提示
set shortmess=atI
" 设置格式化时制表符占用空格数
set shiftwidth=4

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on

" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
filetype plugin indent on
filetype on

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk gk

inoremap <leader>a <Home>
inoremap <leader>e <End>
inoremap <A-d> <Esc>d$a
inoremap <leader>u <Esc>d^I
inoremap <leader>w <Esc>ldbi
inoremap <leader>o <Esc>O
imap <C-c> <plug>NERDCommenterInsert " 开启插入模式下注释，插入模式下 NerdCommenter 插件默认不启动
imap <C-c> <plug>NERDCommenterInsert " 开启插入模式下注释，插入模式下 NerdCommenter 插件默认不启动
" 先查看系统是否支持 clipboard， vim --version | grep clipboard 可以查看是否支持，如果不支持，前面为减号
" 如果不支持复制到系统剪贴板可以通过安装 vim-scripts vim-gtk vim-gnome 几个包来使用
" 或着 set mouse=a 然后通过按住 Shift 键，再用鼠标选中字符进行复制
" NerdCommenter 插件默认不启动 
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p


" 让配置变更立即生效
autocmd BufWritePost $HOME source %

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" typescript 插件
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" 配色方案
Plug 'morhetz/gruvbox'

" 代码补齐
Plug 'Valloric/YouCompleteMe'

" 浏览taglist
Plug 'majutsushi/tagbar'

" 快速文件搜索 导航
Plug 'kien/ctrlp.vim'

" CtrlP插件，类似go to definition的功能
Plug 'tacahiroy/ctrlp-funky'
" <leader>fu

" CtrlP插件，提供sublime类似的grep搜索
Plug 'dyng/ctrlsf.vim'

" 提供快速grep功能
Plug 'rking/ag.vim'

" 模糊查找的功能
Plug 'ggVGc/vim-fuzzysearch'

" 状态栏，buffer栏美化
Plug 'bling/vim-airline'

" 高亮显示文档中颜色代码
Plug 'gorodinskiy/vim-coloresque'

" 高亮显示匹配的标签
Plug 'Valloric/MatchTagAlways'

" 跳转到任意位置
Plug 'Lokaltog/vim-easymotion'

" 快速匹配() [] {} 等
Plug 'vim-scripts/matchit.zip'

" 自动关闭html, xml标签
Plug 'alvan/vim-closetag'

" 代码片段工具 <C-\> 触发
Plug 'SirVer/ultisnips'

"快速注释工具
Plug 'scrooloose/nerdcommenter'

" 快速给单词添加 单引号，双引号，中括号等
Plug 'tpope/vim-surround'
" ysiw" 添加双引号，普通模式下 ysiw + 要添加的符号
" cs"'  cs 替换符号，将双引号替换为单引号
" ds" ds 删除符号，删除双引号

" 自动补全：(), [], {}, <>
" Plug 'Raimondi/delimitMate'
" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" 多光标操作
Plug 'terryma/vim-multiple-cursors'

" 快速书写html
Plug 'mattn/emmet-vim'

" 语法检查插件，写javascript配合eslint使用非常有帮助 
Plug 'scrooloose/syntastic'

" css3语法高亮
Plug 'hail2u/vim-css3-syntax'

" markdown语法高亮
Plug 'tpope/vim-markdown'
"
" 用于预览 markdown 文件, 需要 npm 全局安装 instant-markdown-d 模块
Plug 'suan/vim-instant-markdown'

" JS语法高亮
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'

" git整合
Plug 'tpope/vim-fugitive'

" 快速跳转到变量/函数定义的地方
Plug 'ternjs/tern_for_vim'

" 让Ctrl+F,Ctrl+B的滚屏来得更顺滑一些
Plug 'yonchu/accelerated-smooth-scroll'

" 自动补全插件
Plug 'Shougo/neocomplete.vim'

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" －－－－－－－－－－－－－－－－－ YCM CONFIG BEGIN －－－－－－－－－－－－－－－－－
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
let g:ycm_show_diagnostics_ui = 0                  "关闭语法提示
let g:ycm_global_ycm_extra_conf = '.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=0    " 语法关键字补全
let g:ycm_complete_in_comments = 0   "在注释输入中也能补全
let g:ycm_complete_in_strings = 0 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
let g:clang_user_options='|| exit 0'
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug' "同时，YCM可以打开location-list来显示警告和错误的信息:YcmDiags
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
nmap <F6> :YcmDiags
set tags+=/usr/include/c++/4.8.5/stdcpp.tags
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
let mapleader=";"
let maplocalleader=";"
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
map <F12> :YcmCompleter GoTo<CR>
" －－－－－－－－－－－－－－－－－ YCM CONFIG END   －－－－－－－－－－－－－－－－－

" 正确设置vimrc，读取tags（当前目录，否则向上级目录查找添加 .tags）
set tags=./.tags;,.tags

" －－－－－－－－－－－－－－－－－ NERDTree CONFIG END   －－－－－－－－－－－－－－－－－
" NERDTree config
" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"map <leader>n to open NERDTree
map <leader>n :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" －－－－－－－－－－－－－－－－－ NERDTREE CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ TAGBAR CONFIG END   －－－－－－－－－－－－－－－－－
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'          			" ctags程序的路径
let g:tagbar_right = 1 								" 让tagbar在页面左侧显示，默认右边
let g:tagbar_width = 30								" 设置tagbar的宽度为30列，默认40
let g:tagbar_autofocus = 1							" 这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_sort = 0								" 设置标签不排序，默认排序

" let g:tagbar_width=35
" let g:tagbar_autofocus=1
" let g:tagbar_right = 1
" nmap <leader>t :TagbarToggle<CR>
" －－－－－－－－－－－－－－－－－ TAGBAR CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ CTRLP CONFIG END   －－－－－－－－－－－－－－－－－
let g:ctrlp_map = '<leader>ff'
let g:ctrlp_cmd = 'CtrlP'
" 相当于mru功能，show recently opened files
map <leader>fp :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
" 使用 ag 搜索
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" －－－－－－－－－－－－－－－－－ CTRLP CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ CTRLP CONFIG END   －－－－－－－－－－－－－－－－－
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" －－－－－－－－－－－－－－－－－ CTRLP CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ NERDCOMMENTER CONFIG END   －－－－－－－－－－－－－－－－－
" <leader>cc 加注释 默认快捷键
" <leader>cu 取消注释
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1
" <leader>cc  注释单行或者选中行
" <leader>cm  多行注释
" <leader>cu  解开注释
" <leader>ci  在注释和取消注释之间切换
" －－－－－－－－－－－－－－－－－ NERDCOMMENTER CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ vim-multiple-cursors CONFIG END   －－－－－－－－－－－－－－－－－
" 多光标操作
" <leader>d " 开始选择
" <leader>x " 跳过当前
" <leader>p " 返回选择
" －－－－－－－－－－－－－－－－－ vim-multiple-cursors CONFIG END   －－－－－－－－－－－－－－－－－

" －－－－－－－－－－－－－－－－－ gruvbox 主题 CONFIG END   －－－－－－－－－－－－－－－－－
set bg=dark "设置背景为黑色
colorscheme gruvbox "设置主题为 gruvbox
set guioptions=  "去掉两边的scrollbar
set guifont=Monaco:h17 "设置字体和字的大小
" －－－－－－－－－－－－－－－－－ gruvbox 主题 CONFIG END   －－－－－－－－－－－－－－－－－
