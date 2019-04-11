function! myspacevim#before() abort
endfunction

function! myspacevim#after() abort
  
    let g:SimpylFold_docstring_preview = 1
    let g:auto_save=1

    setglobal autoread
    au CursorHold * checktime  
    autocmd FileType markdown setlocal wrap 
    autocmd FileType markdown setlocal nolinebreak 
    
    nnoremap H ^
    nnoremap L $
endfunction

