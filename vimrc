""" Vundle configuration

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'gmarik/Vundle.vim'
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

" Correct python indentation
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2                  



" Misc
set mouse=
syntax on
set bs=2
set enc=utf-8

" Explorer
" todo - zmienić tak, żeby defaultowo leciało w to samo okno i otwierało w tym samym oknie, a skróty robiły manipulacje 
let g:netrw_banner = 0
let g:netrw_browse_split = 4 " Open in previous window
let g:netrw_winsize=20
let g:netrw_altv=1
let g:netrw_liststyle = 3

" ---- Mappings

" Splits
nnoremap <C-w><BS> <C-w>10<Left> \| :let g:netrw_browse_split=4 <CR>

" Tabs
nnoremap <Right> :tabnext<CR>
nnoremap <Left> :tabprevious<CR>
" New map with explorer and 2 windows
nnoremap <C-T> :tabnew \| :let g:netrw_browse_split=4 \| :Vex \| <CR>

" Explorer
nnoremap <C-e>e :let g:netrw_browse_split=0 \| :Ex <CR>
nnoremap <C-e>s :let g:netrw_browse_split=4 \| :Sex<CR>
nnoremap <C-e>v :let g:netrw_browse_split=4 \| :Vex<CR>

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za



" To bare in mind
" Windows:
" <C-w> 50 > - current window larger + 50
" <C-w> 50 < - -------||----- shorter + 50

" Tabs:



