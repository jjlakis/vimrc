" Misc
set mouse=
syntax on
set bs=2
set enc=utf-8

" Explorer
let g:netrw_banner = 0
let g:netrw_browse_split = 4 " Open in previous window
let g:netrw_winsize=20
let g:netrw_altv=1
let g:netrw_liststyle = 3

" ---- Mappings

" Splits
nnoremap <C-w><BS> <C-w>10<Left>

" Tabs
nnoremap 1 :tabprevious<CR>                                                                            
nnoremap 2 :tabnext<CR>

" Explorer
nnoremap <C-e>e :Ex<CR>
nnoremap <C-e>s :Sex<CR>
nnoremap <C-e>v :Vex<CR>



