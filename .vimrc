set encoding=utf-8

let g:vim_dir = has("nvim") ? expand('~/.config/nvim') : expand('~/.vim')
let s:cache_home = vim_dir . '/.cache'
let s:dein_dir = expand('~/.config/dein')
let s:dein_repo_dir = expand('~/src/github.com/Shougo/dein.vim')


" plugin
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  let s:dein = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
  let s:dein_lazy = fnamemodify(expand('<sfile>'), ':h').'/dein_lazy.toml'
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:dein, {'lazy': 0})
  call dein#load_toml(s:dein_lazy, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" encoding
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" indent
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2


" appearance
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]
set number
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set showmatch

" other
set viminfo=
set autoread
