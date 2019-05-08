" 基础设置
set cursorcolumn
set cursorline
set colorcolumn=120
set mouse=a
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12

" 解决jk引起的粘贴问题
set t_BE=

" 键盘映射
source .common_keybind.vim

" 插件管理器
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'silverbulletmdc/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

filetype plugin indent on
syntax on
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsUsePythonVersion = 3

Plug 'ferrine/md-img-paste.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'silverbulletmdc/vim-inkscape-insert'
Plug 'vim-scripts/vim-auto-save'

Plug 'Valloric/YouCompleteMe'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:auto_save = 1

Plug 'ervandew/supertab'
" File search
Plug 'ctrlpvim/ctrlp.vim'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
au BufRead,BufEnter,BufNewFile * IndentLinesReset
Plug 'Yggdroot/indentLine'

Plug 'altercation/vim-colors-solarized'
" Initialize plugin system
call plug#end()

autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
nmap <silent> <leader>s :source ~/.vimrc<CR>
nmap <silent> <leader>v :e ~/.vimrc<CR>
" there are some defaults for image directory and image name, you can change
" them
" " let g:mdip_imgdir = 'img'
" " let g:mdip_imgname = 'image'

nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>


" vim markdown
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1


if has("gui_running") 
	" au GUIEnter * simalt ~x " 窗口启动时自动最大化 
	set guioptions-=m " 隐藏菜单栏 
	set guioptions-=T " 隐藏工具栏 
	"set guioptions-=L " 隐藏左侧滚动条 
	""set guioptions-=r " 隐藏右侧滚动条 
	"set guioptions-=b " 隐藏底部滚动条 
	"set showtabline=0 " 隐藏Tab栏 
	syntax enable
	set background=light
	colorscheme solarized
else
	let g:solarized_termcolors=256
	set background=dark
	colorscheme solarized
endif "

