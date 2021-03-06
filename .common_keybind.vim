let mapleader=","
inoremap jk <Esc>

" 将HL映射为回到行首，行末
noremap H ^
noremap L $
noremap J <c-d>
noremap K <c-u>

nnoremap U <c-r>

nnoremap <leader>\| :vsplit<CR>
nnoremap <leader>- :split<CR>
nnoremap <leader>v "+p

nnoremap <tab> <c-w>w

nnoremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" 使用leader代替被覆盖的功能
nnoremap <leader>j J
