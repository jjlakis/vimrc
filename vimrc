""" Vundle configuration

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer --rust-completer may be necessary
" https://stackoverflow.com/questions/65284572/your-c-compiler-does-not-fully-support-c17
Bundle 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer --system-libclang'}
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'

call vundle#end()            " required
filetype plugin indent on    " required

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
nnoremap > :tabnext<CR>
nnoremap < :tabprevious<CR>
" New map with explorer
nnoremap <C-T> :tabnew \| :let g:netrw_browse_split=4 \| :Vex \| <CR>

" Explorer
nnoremap <C-e>e :let g:netrw_browse_split=0 \| :Ex <CR>
nnoremap <C-e>s :let g:netrw_browse_split=4 \| :Sex<CR>
nnoremap <C-e>v :let g:netrw_browse_split=4 \| :Vex<CR>

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Cursor
" w, e - forward (beggining, end of the word). q - back
nnoremap q b
nnoremap <S-j> 10j
nnoremap <S-k> 10k

" Words
" * - search for the current word
" select current word
nnoremap " viw 

" To bare in mind
" Windows:
" <C-w> 50 > - current window larger + 50
" <C-w> 50 < - -------||----- shorter + 50

" Go to definition
nnoremap g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Ctrl + ^ - powroc do poprzedniego okna




