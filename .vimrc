set encoding=utf-8                                    "设置字符编码
set fileencoding=utf-8                                "设置字符编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置字符编码
set fileformat=unix                                   "设置字符编码
set fileformats=unix,dos,mac                          "设置字符编码
set guifont=Courier\ 10\ Pitch\ 10                    "设置字体 
colorscheme github                                    "配置颜色 
syntax on	                                          "语法高亮		
set nu						                          "显示行号
filetype on                                           "启用文件类型侦测
filetype plugin on                                    "根据文件加载插件
filetype plugin indent on                             "根据文件加载插件

set autoread 					                      "当文件更新，自动加载
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格格
set nocompatible                                      "禁用兼容模式
set backspace=indent,eol,start
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2
set cursorline                                        "突出显示当前行
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery    "jquery 颜色配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd       "自动高亮markdown 语法 
au BufRead,BufNewFile,BufEnter * cd %:p:h             "自动切换编辑文件目录
autocmd! bufwritepost $HOME/.vimrc source %           "自动生效配置

"omnifunc
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
">>>基础设置结束============================================================



">>>插件设置================================================================
"vundle设置
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'vundle'
Bundle 'https://github.com/lukaszb/vim-web-indent'                    
Bundle 'https://github.com/vim-scripts/php.vim'
Bundle 'https://github.com/scrooloose/nerdtree'             
Bundle 'https://github.com/bling/vim-airline'
Bundle 'https://github.com/jiangmiao/auto-pairs'           
Bundle 'https://github.com/vim-scripts/taglist.vim'
Bundle 'https://github.com/msanders/snipmate.vim'
Bundle 'https://github.com/vim-scripts/DoxygenToolkit.vim'
Bundle 'https://github.com/scrooloose/nerdcommenter'
Bundle 'https://github.com/othree/xml.vim'
Bundle 'https://github.com/vim-scripts/AutoComplPop'
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'https://github.com/vim-scripts/AutoTag'
Bundle 'https://github.com/pangloss/vim-javascript'
Bundle 'https://github.com/vim-scripts/jQuery'
Bundle 'https://github.com/endel/vim-github-colorscheme'
Bundle 'https://github.com/vim-scripts/pydoc.vim'
Bundle 'https://github.com/vim-scripts/tornadotmpl.vim'
Bundle 'https://github.com/plasticboy/vim-markdown'
Bundle 'https://github.com/sjl/gundo.vim'			
Bundle 'https://github.com/airblade/vim-gitgutter'
"ctags 设置、
set tags=./tags;                            "递归查找tags文件
let Tlist_Show_One_File=1                   "只显示当前文件的tags
let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
let Tlist_WinWidth=30                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示

"Doxygentoolkit 生成注释信息
let g:DoxygenToolkit_authorName="Wangeldon wangeldon@gmail.com"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
"DoxLic 插入copyright  Doxauthor 插入文档信息

"eocomplcache 设置
let g:neocomplcache_enable_quick_match = 1  "自动启动"
"NERDcommenter 
"ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
"cc，注释当前行
"c，切换注释/非注释状态
"cs，以”性感”的方式注释
"cA，在当前行尾添加注释符，并进入Insert模式
"cu，取消注释
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释
"Gundo 显示文件修改历史
map <leader>g :GundoToggle<CR>
"vim-fugitive

"powerline
"let g:Powerline_symbols='unicode'
"airline
let g:airline#extensions#tabline#enabled = 1



">>>插件设置结束============================================================

">>>快捷键设置==============================================================
"F2 启用NERDTree
nmap <F2> :NERDTreeToggle<CR>               "F3 CtagsList
nmap <F3> :Tlist<CR>                        "F4 Tlist
"DoxAuthor Dox DoxBlock三个命令的快捷操作  
nmap <F4>a : DoxAuthor<CR>                  "F4-a 插入 文件信息 
nmap <C-b> :tabnew<CR>                      "C-b 新建tab
nmap <C-n> :tabp  <CR>                      "C-n 移动tab 
let mapleader = ","
nnoremap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <CR>          ",md将markdown 转换成html
