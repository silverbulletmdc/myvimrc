let mapleader=","
inoremap jk <Esc>
" 取消方向键，强制使用vim的方向键
inoremap <esc> <nop>
noremap <up> <nop> 
noremap <down> <nop> 
noremap <left> <nop> 
noremap <right> <nop> 

" 将HL映射为回到行首，行末
noremap H ^
noremap L $
noremap J <c-d>
noremap K <c-u>
nnoremap U <c-r>

nnoremap <leader>\| :vsplit<CR>
nnoremap <leader>- :split<CR>

nnoremap <tab> <c-w>w

nnoremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

nnoremap <leader>r :action ReformatCode<CR>
