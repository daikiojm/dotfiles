" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化
" NeoBundleを更新するための設定
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'itchyny/lightline.vim'
" インデントガイド
NeoBundle 'nathanaelkane/vim-indent-guides'

" カラースキーマ
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sickill/vim-monokai'
"テキストオブジェクトをもっと便利に
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'akiyan/vim-textobj-php'
NeoBundle 'osyo-manga/vim-textobj-multiblock'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'thinca/vim-textobj-comment'
"Emmetプラグイン
NeoBundle 'mattn/emmet-vim'
"JSON表示用プラグイン
NeoBundle 'elzr/vim-json'
"括弧を自動で閉じてくれる
NeoBundle 'Townk/vim-autoclose'

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

"各種設定"{{{
"
    "UNDOファイルを作成しません
    set noundofile

    "バックアップしません
    set nobackup

    set encoding=utf-8

    "フォント
    set guifont=Ricty_Diminished:h12:cSHIFTJIS

    "ステータスバー
    set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

    let g:lightline = {
          \ 'colorscheme': 'jellybeans',
          \ 'component': {
          \   'readonly': '%{&readonly?"x":""}',
          \ },
          \ 'separator': { 'left': '', 'right': '' },
          \ 'subseparator': { 'left': '|', 'right': '|' }
          \ }

    "可視化
    set list
    set listchars=tab:»-,trail:-,nbsp:%,eol:¬

    " 行を強調表示
    set cursorline

    " 列を強調表示
    set cursorcolumn

    "カーラスキーム
    set background=dark
    colorscheme hybrid
    "シンタックスハイライトを有効にする
    syntax on
    "モードラインをONにする
    set modeline
    "メニューバーを非表示にする
    set guioptions-=m
    "ツールバーを非表示にする
    set guioptions-=T
    "左右のスクロールバーを非表示にする
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    "水平スクロールバーを非表示にする
    set guioptions-=b
    "OSのクリップボードを使う
    set clipboard=unnamed
    "ルーラーを表示
    set ruler
    "行数を表示
    set number
    "タブの設定
    set expandtab tabstop=4 shiftwidth=4 softtabstop=0
    "インデントの設定
    set autoindent
    set smartindent
    "折り返ししない
    set nowrap
    "スワップファイルを作成しない
    set noswapfile
    "バックアップファイルを作成しない
    set nobackup
    "ステータスラインを常に表示
    set laststatus=2
    "変更中のファイルでも、保存しないで他のファイルを表示
    set hidden
    "他で書き換えられたら自動で読み直す
    set autoread
    "カーソルの上または下に表示する最小限の行数
    set scrolloff=5
    "コマンドラインモードで保存する履歴件数
    set history=100
    "コマンドラインモードでTABキーによるファイル名補完を有効にする
    set wildmenu wildmode=list:longest,full
    "検索時に大文字・小文字を区別しない
    set ignorecase
    "ただし、検索後に大文字小文字が混在しているときは区別する
    set smartcase
    "スペルチェックを有効にする(ただし日本語は除外する)
    "set spelllang+=cjk
    "set spell
    "不可視文字を可視化する
    set list
    set listchars=tab:>.,trail:_

    " デフォルトdb
    let g:sql_type_default = 'mysql' " MySQLの場合

    " インデントの可視化
    "
    "自動補完
    "
    "let g:neocomplete#enable_at_startup = 1
    " ultisnips {{{
    "NeoBundle 'SirVer/ultisnips'
    "let g:did_UltiSnips_snipmate_compatibility = 1
    "let g:UltiSnipsEditSplit                   = 'vertical'
    "let g:UltiSnipsExpandTrigger               = '<TAB>'
    "let g:UltiSnipsJumpBackwardTrigger         = '<S-TAB>'
    "let g:UltiSnipsJumpForwardTrigger          = '<TAB>'
    "let g:UltiSnipsSnippetsDir                 = $HOME .'/.vim/bundle/vim-snippets/UltiSnips'
    "let g:UltiSnipsUsePythonVersion            = 2
    "}}}

"    " vim-snippets
"    " neoinclude.vim
"    " neocomplete.vim {{{
"    NeoBundleLazy 'Shougo/neocomplete.vim', {'depends': ['KazuakiM/vim-snippets', 'Shougo/neoinclude.vim'], 'insert': 1}
"    let s:hooks = neobundle#get_hooks('neocomplete.vim')
"    function! s:hooks.on_source(bundle) abort "{{{
"        "neocomplete.vim
"        let g:neocomplete#auto_completion_start_length     = 3
"        let g:neocomplete#data_directory                   = $HOME .'/.vim/neocomplete.vim'
"        let g:neocomplete#delimiter_patterns               = {'php': ['->', '::', '\']}
"        let g:neocomplete#enable_at_startup                = 1
"        let g:neocomplete#enable_auto_close_preview        = 3
"        let g:neocomplete#enable_auto_delimiter            = 1
"        let g:neocomplete#enable_auto_select               = 0
"        let g:neocomplete#enable_fuzzy_completion          = 0
"        let g:neocomplete#enable_smart_case                = 1
"        let g:neocomplete#keyword_patterns                 = {'_': '\h\w*'}
"        let g:neocomplete#lock_buffer_name_pattern         = '\.log\|.*quickrun.*\|.jax'
"        let g:neocomplete#max_keyword_width                = 30
"        let g:neocomplete#max_list                         = 8
"        let g:neocomplete#min_keyword_length               = 3
"        let g:neocomplete#sources                          = {'_': ['ultisnips', 'file', 'dictionary', 'buffer']}
"        let g:neocomplete#sources#buffer#cache_limit_size  = 50000
"        let g:neocomplete#sources#buffer#disabled_pattern  = '\.log\|\.jax'
"        let g:neocomplete#sources#buffer#max_keyword_width = 30
"        let g:neocomplete#sources#dictionary#dictionaries  = {'_': '', 'php': $HOME .'/.vim/dict/php.dict'}
"        let g:neocomplete#sources#omni#input_patterns      = {'go': '\h\w\.\w*'}
"        let g:neocomplete#use_vimproc                      = 1

    "    "neoinclude.vim
    "    let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl']}
    "    let g:neoinclude#max_processes = 5
    "endfunction "}}}
    "}}}


"}}}

" インストールのチェック
NeoBundleCheck

call neobundle#end()
