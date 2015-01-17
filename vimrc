" vim: filetype=vim

" 基本設定
set number     " 行数を表示する
set tabstop=2  " \tの表示幅
set shiftwidth=2
set expandtab  " タブを複数の半角スペースにする
set autoindent " オートインデント
set smarttab
set hidden     " 不可視文字を可視化する
set showmatch  " 対応する括弧などを表示する


" ステータスラインの表示
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set statusline+=%{fugitive#statusline()}


"""""""""
"  NeoBundleやプラグインに関する設定
"""""""""
set nocompatible
filetype off

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
"  set rtp+=$HOME/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~./.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

""" プラグイン
" ファイルを開きやすくする
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
" ディレクトリツリーを表示する
NeoBundle 'scrooloose/nerdtree'
" Rubyのendを自動挿入する
NeoBundle 'tpope/vim-endwise'
" 複数行のコメントを設定する
NeoBundle 'tomtom/tcomment_vim'
" インデントを視覚化する
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
" 対応したログに色を付ける
NeoBundle 'vim-scripts/AnsiEsc.vim'

""" カラースキーム
" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" moria
NeoBundle 'vim-scripts/moria'
" badwolf
NeoBundle 'sjl/badwolf'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck


" 配色
set background=dark
colorscheme badwolf
"if &term =~ "xterm-256color" || "screen-256color"
"  set t_Co=256
"  set t_Sf=[3%dm
"  set t_Sb=[4%dm
"elseif &term =~ "xterm-color"
"  set t_Co=8
"  set t_Sf=[3%dm
"  set t_Sb=[4%dm
"endif

syntax enable
