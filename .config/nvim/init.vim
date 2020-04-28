"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/satoh/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/satoh/.cache/dein')
  call dein#begin('/home/satoh/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/satoh/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('scrooloose/nerdtree')
  call dein#add('cohama/lexima.vim')
  call dein#add('tomasr/molokai')
  call dein#add('numirias/semshi')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" End dein Scripts-------------------------

" setting for coc.nvim
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set signcolumn=yes

" color scheme
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme molokai
let g:airline_theme = 'minimalist'

" load file 
autocmd BufRead * highlight LineNr ctermfg=8      
autocmd BufNewfile * highlight LineNr ctermfg=8 

" txt code 
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac 
set ambiwidth=double 
set noswapfile

" tab and indent 
set expandtab 
set tabstop=4 
set softtabstop=4 
set autoindent 
set smartindent 
set shiftwidth=4 

" search 
set incsearch 
set ignorecase 
set smartcase 
set hlsearch 

" cursore 
set whichwrap=b,s,h,l,<,>,[,],~ 
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" indicator 
set number 
set cursorline
hi clear CursorLine 
set visualbell t_vb=
set noerrorbells
let g:airline#extensions#tabline#enabled=1

" key mapping 
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sm gt
nnoremap sn gT
nnoremap <silent><C-e> :NERDTreeToggle<CR>
