""""""""""""""""""""""""""""""""""""""""
" The vundle's configuration           "
""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.dotfiles/vim/plugin/vundle.vim

""""""""""""""""""""""""""""""""""""""""
" Status line                          "
""""""""""""""""""""""""""""""""""""""""

"Always show the status line
set laststatus=2

"Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo              "
""""""""""""""""""""""""""""""""""""""""
"Turn backup off, since most stuff is in SVN, git anyway
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related         "
""""""""""""""""""""""""""""""""""""""""

"Use spaces instead of tabs
set expandtab

"Be smart when using tabs
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Enable line number
set number

""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows, buffers"
""""""""""""""""""""""""""""""""""""""""

"Treat long lines as break lines(Pretty useful when i'm using markdown)
map j gj
map k gk

"Smart the way moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"""""""""""""""""""""""""""""""""""""""
" Now set the colors and fonts        "
"""""""""""""""""""""""""""""""""""""""
colorscheme wombat256i

"""""""""""""""""""""""""""""""""""""""
" Common Configurations               "
"""""""""""""""""""""""""""""""""""""""
"Set utf-8 encoding
set encoding=utf8

"Use unix as the standard file type
set ffs=unix,dos,mac

"Enable syntax hightlighting
syntax on

"Enable filetype plugins
filetype plugin indent on

"Set auto read when files outside changed
set autoread

"Set how many lines of history VIM has to remember
set history=999

"Set 5 lines to the cursor - moving every 5 lines when using j/k
set so=5

"Always show the current location
set ruler

"Set height of command bar 2
set cmdheight=2

"Buffer hidden when abandoned
set hid

"Set backspace the behavior it should have
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Hightlight the search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Won't redraw while executing macros
set lazyredraw

"Regular expressions magic on
set magic

"Show matching brackets when text indicator is over them
set showmatch

"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Enable cscope features
set cscopequickfix=s-,c-,d-,i-,t-,e-

"Highlighting the current line & column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

""""""""""""""""""""""""""""""""""""""""
" Set Filetypes                        "
""""""""""""""""""""""""""""""""""""""""

"Set *.html.erb files to html, ruby and erb filetype
autocmd BufNewFile,BufRead *.html.erb set filetype=html.ruby.erb
autocmd BufNewFile,BufRead *.md set filetype=markdown
""""""""""""""""""""""""""""""""""""""""
" Helper functions                     "
""""""""""""""""""""""""""""""""""""""""

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
