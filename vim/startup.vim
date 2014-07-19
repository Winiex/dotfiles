function! Startup()
    "Make NERDTree and Tagbar automatically start
    if 0 == argc()
        NERDTree
    end

    Tagbar
endfunction

"Run startup function
au VimEnter * call Startup()
