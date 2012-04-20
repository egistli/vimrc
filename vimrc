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
syntax enable
set background=dark
colorscheme solarized
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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set ls=2

"Set minimum window height
set winminheight=0
set winheight=30

:set sidescroll=10
:set scrolljump=10

"Setup Helpful Commands
nnoremap <F6> :w !php -l<CR>
nnoremap <silent> <F5> :NERDTree<CR>
"Tab Control
nnoremap H :tabprev <CR>
nnoremap L :tabnext <CR>


"Fix arrowkeys problem caused by Autoclose
set term=linux
imap OA <ESC>ki
imap OB <ESC>ji
imap OC <ESC>li
imap OD <ESC>hi

" Auto open
" autocmd VimEnter * NERDTree

" Powerline
let g:Powerline_symbols = 'fancy'

" Setup BufWritePost events for rsync yo
autocmd BufWritePost ~/Works/yo/* silent !~/Scripts/yo_sync_dev.sh

let g:yankring_manual_clipboard_check=1 
