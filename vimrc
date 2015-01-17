set number
set tabstop=2
set autoindent


"colorscheme badwolf

set nocompatible
filetype off

if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~./.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
filetype plugin indent on
