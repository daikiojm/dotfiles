" Color Schema
syntax enable
set background=dark    "または light

" Turn off Vi compatibility
set nocompatible

" Status Line
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

" Automatically reload when the contents change
set autoread

" Show line number
set number

" Display cursor line
set cursorline
set cursorcolumn

" Visualization of tabs, blanks, line breaks
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

" Width when tab is displayed
set tabstop=4
" Width when tab is inserted
set shiftwidth=4

" Cursor position indication
set ruler

" Display parentheses correspondence for a moment
set showmatch


" Add NeoBundle's path to sth
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=/Users/d_ojima/.vim/bundle/neobundle.vim/
endif

" Start NeoBundle setting
" call neobundle#begin(expand('/Users/d_ojima/vim/bundle'))
call neobundle#begin(expand('~/.vim/bundle/'))

" Manage NeoBundle version with NeoBundle itself
NeoBundleFetch 'Shougo/neobundle.vim'

" Describe the plugin you want to install
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ng/vim-airline'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'mattn/emmet-vim'

" Hybirid Color Schema
NeoBundle 'w0ng/vim-hybrid'

" solarized Color Schema
NeoBundle 'altercation/vim-colors-solarized'

" NeoBundle setting end
call neobundle#end()

" Enable plugin / indentation by file type
filetype plugin indent on

let g:airline_powerline_fonts = 1
set laststatus=2

"------------------------------------
" emmet-vim
"------------------------------------
"let g:user_emmet_leader_key='<c-e>'


" Described at the bottom ...
colorscheme hybrid
syntax on
