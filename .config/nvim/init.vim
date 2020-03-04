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
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('rust-lang/rust.vim')
  call dein#add('cohama/lexima.vim')
  call dein#add('tomasr/molokai')
  call dein#add('deoplete-plugins/deoplete-jedi')
  call dein#add('numirias/semshi')

  " deoplete option
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#auto_complete_start_length = 1
  let g:deoplete#check_stderr = 0
  let g:deoplete#max_list = 10000
  set completeopt-=preview

  " python suboption 
  let g:jedi#completions_enabled = 0
  let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'

  " rust suboption
  let g:rustfmt_autosave = 1
  let g:deoplete#sources#rust#documentation_max_height=20

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" End dein Scripts-------------------------
" Normal Setting-------------------------------

" color scheme
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme molokai

" 自動実行系
autocmd BufRead * highlight LineNr ctermfg=8      
autocmd BufNewfile * highlight LineNr ctermfg=8 

" 文字コード関係
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac 
set ambiwidth=double 
set noswapfile

" タブ・インデント関係
set expandtab 
set tabstop=4 
set softtabstop=4 
set autoindent 
set smartindent 
set shiftwidth=4 

" 文字列検索
set incsearch 
set ignorecase 
set smartcase 
set hlsearch 

" カーソル関係
set whichwrap=b,s,h,l,<,>,[,],~ 
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" インジケーター関係
set number 
set cursorline
hi clear CursorLine 
set visualbell t_vb=
set noerrorbells

" キーマッピング
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap <silent><C-e> :NERDTreeToggle<CR>
