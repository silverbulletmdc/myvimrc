" Vundle配置---{{{
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
Plugin 'vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'plytophogy/vim-virtualenv'
Plugin 'cjrh/vim-conda'
Plugin 'tpope/vim-obsession'
Plugin 'jiangmiao/auto-pairs'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"}}}

" 基本设置{{{
set number numberwidth=6
let g:auto_save=1
set nowrap
set hlsearch incsearch
set statusline=%f\ -\ FileType:\ %y\ %l/%L
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
let g:SimplyFold_docstring_preview=1
"}}}

" 映射{{{
let mapleader=","
let maplocalleader="\\"
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
nnoremap <space> za
inoremap <c-y> <esc>ddi
inoremap <c-d> <esc>yypi
inoremap <c-u> <esc>viwUi
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
iabbrev @@ mengdechaolive@qq.com
nnoremap <leader>" `<i"<esc>`>a"<esc>
" 移动到行首
nnoremap H ^
onoremap H ^
nnoremap L $
onoremap L $
onoremap p i(
inoremap jk <esc>
inoremap <esc> <nop>
" 退出
nnoremap <leader>q :wqa<cr>
" 切换tab
nnoremap <c-h> gT
nnoremap <c-l> gt
nnoremap <tab> <c-w>w
" 抑制hightlight
nnoremap <leader>h :noh<cr>
" 保证光标在屏幕中心
nnoremap j jzz
nnoremap k kzz
"}}}

" 文件类型设置{{{
augroup testgroup
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
    autocmd FileType python noremap <leader>b Oimport ipdb; ipdb.set_trace()<esc>
augroup END
"}}}

" Vimscript file settings ----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"-- ipdb -----{{{
"}}}

" NERDTree设置{{{
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"开启/关闭nerdtree快捷键
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" }}}

" Python设置{{{
augroup filetype_python
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
    autocmd FileType python setlocal foldlevel=99
augroup END

au BufNewFile,BufRead *.py setlocal tabstop=4
au BufNewFile,BufRead *.py setlocal softtabstop=4
au BufNewFile,BufRead *.py setlocal shiftwidth=4
au BufNewFile,BufRead *.py setlocal textwidth=79
au BufNewFile,BufRead *.py setlocal expandtab
au BufNewFile,BufRead *.py setlocal autoindent
au BufNewFile,BufRead *.py setlocal fileformat=unix
let python_highlight_all=1
syntax on
" }}}

" YouCompleteMe设置{{{
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" }}}

