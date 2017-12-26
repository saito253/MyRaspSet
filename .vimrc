syntax enable
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set helplang=jp
set mouse=a
"set diff
"set scrollbind
"set cursorbind
"set scrollopt=hor
"set nowrap
"set foldmethod=diff
"set foldcolumn=2
set foldlevel=1
colorscheme desert

"set nocompatible
"filetype off
"
"if has('vim_starting')
"set runtimepath+=~/.vim/bundle/neobundle.vim
"call neobundle#rc(expand('~/.vim/bundle/'))
"endif
"
""insert here your Neobundle plugins"
"NeoBundle 'scrooloose/nerdtree'
"filetype plugin indent on
"
"nnoremap <silent><C-e> :NERDTreeToggle<CR>



if has('vim_starting')
set nocompatible               " Be iMproved

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck

let g:treeExplVertical=1
let g:treeExplWinSize=30

set diffopt=filler,context:10000
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
