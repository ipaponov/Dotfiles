" Turn on line numbering. Turn it off with "set nonu"
set nu

" Set syntax on
syntax on

" insert space characters whenever the tab key is pressed
" insert 4 spaces characters when tab key is pressed
" insert 4 spaces wen autoindent indents
set expandtab
set tabstop=4
set shiftwidth=4

" let backspace delete indent
set softtabstop=4

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Do smart indentation depending on code syntax (e.g. change after { }, keywords etc)
set smartindent

" Search
set ic  " Case insensitive search
set hls " Higlhight search

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
colorscheme delek

" enable mouse usage
set mouse=a

" highlight current line
set cursorline

" bleeding lines
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" show matching brackets/parenthesis
set showmatch

set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline =%<%f\                     " Filename
    set statusline +=%w%h%m%r                 " Options
    set statusline +=\ [%{&ff}/%Y]            " filetype
    set statusline +=\ [%{getcwd()}]          " current dir
    set statusline +=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
