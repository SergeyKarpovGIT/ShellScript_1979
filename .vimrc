" If interface language is not english by default
" first of all view: locale -a | egrep '(en)|(EN)'
" language en_US.utf8

set noswapfile
set number
set tabstop=4
set shiftwidth=4
" If there are problems with input
" set encoding=utf8
set expandtab
set nowrap
set cindent
set showcmd
set wildmenu
set cursorline
set incsearch
set ruler
" set scrolloff=0

" To prevent redundant highlighting after search.
" Not needed on Apple work stations:
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" Indents decoration (not for replit.com):
set listchars=extends:>,precedes:<,multispace:\\u22ee\ \ \ ,eol:$,space:\\u22c5

" For replit.com only! Works fine on work stations:
" set runtimepath+=~/.vim/colors
colorscheme retrobox
syntax on
