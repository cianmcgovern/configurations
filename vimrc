set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'chriskempson/base16-vim'

call vundle#end()

" CtrlP stuffs
let g:ctrlp_working_path_mode = 'ra'

" CTags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R .<CR>
set tags=./tags;/

" YCM
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" Theme
set background=dark
"colorscheme solarized
colorscheme base16-bright

" Tab stuff
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Store backup files elsewhere
set backup
set backupdir=~/.vimbk/backup
set directory=~/.vimbk/tmp

set nocompatible
set ls=2
set showcmd
set hlsearch
set ruler
set ignorecase
set smartcase
set title
set ttyfast
set spell
set wildmenu
set wildmode=list:longest,full

" Disable error bells
set noerrorbells
set visualbell
set t_vb=

" Indentation and file detection
 set autoindent
set smartindent
filetype on
filetype plugin on

" Disable indentation when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
syntax on

highlight MatchParen ctermbg=4

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set hidden

" Reload ~/.vimrc after ~/.vimrc saved
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" associate Vagrantfile with ruby filetype
au BufRead,BufNewFile Vagrantfile set filetype=ruby

nmap <C-\>r :!find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "*.java" > cscope.files; cscope -b; ctags -R .<CR>

set backspace=2 " make backspace work like most other apps
