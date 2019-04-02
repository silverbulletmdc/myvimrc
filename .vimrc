" 基本设置{{{
set number numberwidth=6
set nowrap
set statusline=%f\ -\ FileType:\ %y\ %l/%L
set laststatus=2
"}}}

" 映射{{{
let mapleader=","
let maplocalleader="\\"
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
inoremap <c-y> <esc>ddi
inoremap <c-d> <esc>yypi
inoremap <c-u> <esc>viwUi
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
iabbrev @@ mengdechaolive@qq.com
iabbrev for NOPENOPENOPE
nnoremap <leader>" `<i"<esc>`>a"<esc>
nnoremap H 0
onoremap H 0
nnoremap L $
onoremap L $
onoremap p i(
inoremap jk <esc>
inoremap <esc> <nop>
"}}}

" 文件类型设置{{{
augroup testgroup
autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
augroup END
"}}}

" Vimscript file settings ----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
