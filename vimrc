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
nnoremap <C-w><BS> <C-w>10<Left>

" Tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Explorer
nnoremap <C-e>e :Ex<CR>
nnoremap <C-e>s :Sex<CR>
nnoremap <C-e>v :Vex<CR>




" To bare in mind
" Windows:
" <C-w> 50 > - current window larger + 50
" <C-w> 50 < - -------||----- shorter + 50

" Tabs:
