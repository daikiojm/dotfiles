let g:hybrid_use_iTerm_colors = 1
set background=dark
colorscheme hybrid
syntax on

"ステータスライン
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

"内容が変更されたら自動的に再読み込み
set autoread

" 行番号を表示
set number

"カーソルラインを表示する
set cursorline
set cursorcolumn

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"カーソル位置表示
set ruler

"カッコの対応関係を一瞬表示
set showmatch 


" sthにNeoBundleのパスを追加する
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=/Users/d_ojima/.vim/bundle/neobundle.vim/
endif
 
" NeoBundle設定の開始
" call neobundle#begin(expand('/Users/d_ojima/vim/bundle'))
call neobundle#begin(expand('~/.vim/bundle/'))
 
" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'
 
" インストールしたいプラグインを記述
" 下記は unite.vimというプラグインをインストールする例
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ng/vim-airline'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'vim-airline/vim-airline-themes'
 
" NeoBundle設定の終了
call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

let g:airline_powerline_fonts = 1
set laststatus=2


