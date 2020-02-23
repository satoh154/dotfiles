" Dein Setting-------------------------------
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('scrooloose/nerdtree')
  call dein#add('rust-lang/rust.vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('cohama/lexima.vim')
  call dein#add('racer-rust/vim-racer') 

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  let g:deoplete#enable_at_startup = 1

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Normal Setting-------------------------------

" 自動実行系
autocmd BufRead * highlight LineNr ctermfg=8      
autocmd BufNewfile * highlight LineNr ctermfg=8 
nnoremap <silent><C-e> :NERDTreeToggle<CR>      
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
let g:racer_cmd = expand('~/.cargo/bin/racer')
let g:rustfmt_autosave = 1

" quickrun.vim
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config["_"] = {
    \ "runner/vimproc/updatetime" : 80,
    \ "outputter/buffer/split" : ":rightbelow 8sp",
    \ "outputter/error/error" : "quickfix",
    \ "outputter/error/success" : "buffer",
    \ "outputter" : "error",
    \ }
autocmd BufNewFile,BufRead *.rs  let g:quickrun_config.rust = {'exec' : 'cargo run'}

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
