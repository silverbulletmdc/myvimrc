let mapleader=","
set relativenumber

set mouse=a
inoremap jk <Esc>
" 解决jk引起的粘贴问题
set t_BE=
" 取消方向键，强制使用vim的方向键
inoremap <esc> <nop>
noremap <up> <nop> 
noremap <down> <nop> 
noremap <left> <nop> 
noremap <right> <nop> 

" 将HL映射为回到行首，行末
noremap H ^
noremap L $
noremap J 10j
noremap K 10k
nnoremap U <c-r>

" 在最后一行添加一个：
nnoremap ,: A:<esc>

" 在insertmode中使用alt+方向键进行移动
inoremap <M-h> <C-o>h
inoremap <M-j> <C-o>j
inoremap <M-k> <C-o>k
inoremap <M-l> <C-o>l

nnoremap <leader>v <c-v>

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
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:auto_save = 1
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
Plug 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 239

Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()

autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
nmap <silent> <leader>s :source .vimrc<CR>
nmap <silent> <leader>v :e .vimrc<CR>
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
	"au GUIEnter * simalt ~x " 窗口启动时自动最大化 
	""set guioptions-=m " 隐藏菜单栏 
	set guioptions-=T " 隐藏工具栏 
	"set guioptions-=L " 隐藏左侧滚动条 
	""set guioptions-=r " 隐藏右侧滚动条 
	"set guioptions-=b " 隐藏底部滚动条 
	""set showtabline=0 " 隐藏Tab栏 
	syntax enable
	set background=light
	colorscheme solarized
endif "

syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
nmap <C-S> :update<CR>
vmap <C-S> <C-C>:update<CR>
imap <C-S> <C-O>:update<CR>
