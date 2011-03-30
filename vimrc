"Start pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

:colorscheme desert
syntax enable
syntax on
set vb t_vb=
set ru
set nu
set incsearch
set hlsearch
set ts=8
set sts=4
set sw=4
set autoindent
set bs=2
set ls=2
set nocp
filetype plugin on
set cursorline
set cursorcolumn 
"highlight cursorline cterm=none ctermbg=lightblue ctermfg=none

set winminheight=0
set winheight=30

set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0

" :help console-menus
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
:map <F4> :emenu <C-Z>

"set grepprg=global\ -t
"set grepformat=%m\	%f\	%l

:set sidescroll=10
:set scrolljump=10
:set listchars+=precedes:<,extends:>
":set nowrap
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1
set backupcopy=yes

"php syntax check
map <F6> :w !php -l<CR>
