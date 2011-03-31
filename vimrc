"Load pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"Enable filetype
filetype on
filetype indent on
filetype plugin on
set nocompatible

"Enhance tab completion
set wildmenu

"Set encodings
set fenc=utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1

"Ensure backup
set backupcopy=yes

"Setup Display Preference
:colorscheme desert
syntax on
set showmatch
set ruler
set autoread
set nu
set cursorline
set cursorcolumn 
set incsearch
set hlsearch
set ignorecase
set smartcase
set smarttab

set autoindent
set copyindent
set ts=4
set sts=2
set sw=2
set bs=2
set ls=2

"Set minimum window height
set winminheight=0
set winheight=30

:set sidescroll=10
:set scrolljump=10

"Setup Helpful Commands
nnoremap <F6> :w !php -l<CR>
nnoremap <silent> <F5> :NERDTree<CR>

"Fix arrowkeys problem caused by Autoclose
set term=linux
imap OA <ESC>ki
imap OB <ESC>ji
imap OC <ESC>li
imap OD <ESC>hi

" Status line { //from vgod
 set laststatus=2
 set statusline=\ %{HasPaste()}%<%-15.40(%F%)%m%r%h\ %w\ \ 
 set statusline+=\ \ \ [%{&ff}/%Y] 
 set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
 set statusline+=%=%-14.(%l,%c%V%)\ %p%%/%L

 function! CurDir()
     let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
  endfunction

  function! HasPaste()
	if &paste
	  return '[PASTE]'
	else
	  return ''
	endif
  endfunction

"}
