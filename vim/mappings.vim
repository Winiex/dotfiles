"Remap VIM 0 to the first non-blank character
map 0 ^

"CtrlP mappings
map zps :CtrlP<Enter>
map zpb :CtrlPBuffer<Enter>
map zpm :CtrlPMRU<Enter>
map zpx :CtrlPMixed<Enter>

"Tagbar mappings
map zgs :Tagbar<Enter>

"Tabbar mappings"
map zn :Tbbn<Enter>
map zm :Tbbp<Enter>
map zd :Tbbd<Enter>
map zts :TbStart<Enter>
map ztc :TbStop<Enter>

"Format the entire source code file
map zfm gg=G

"Insert newline after current line without entering insert mode
nmap OO O<Esc>
nmap oo o<Esc>

"Insert newline after cursor
nmap mo i<Enter><Esc>

"Python flake8 check
autocmd FileType python map <buffer> zfp :call Flake8()<CR>
