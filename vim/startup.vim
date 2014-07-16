function! Startup()
    "Make NERDTree autmatically started
    if 0 == argc()
        NERDTree
    end
    

    "Let tagbar auto-start
    Tagbar
endfunction

"Run startup function
au VimEnter * call Startup()
