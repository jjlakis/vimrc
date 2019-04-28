" VIM:
" https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
" ./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes
" --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3/config
"  --enable-perlinterp=yes --enable-luainterp=yes --enable-gui=gtk2
"  --enable-cscope --prefix=/usr/local
" :echo has('python3')
" Reqs on da system:
" pip3 install --user --upgrade pynvim
" go get -u github.com/stamblerre/gocode

set mouse=
set ttymouse=
set backspace=indent,eol,start

" filetype plugin indent on
" syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go'

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Shougo/deoplete.nvim'
  Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
  let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

call plug#end()

set completeopt+=noselect

