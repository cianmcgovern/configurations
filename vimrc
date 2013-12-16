call pathogen#infect()
" let g:Powerline_symbols = 'fancy'

syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

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
" set spell
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
inoremap jj <Esc>
highlight MatchParen ctermbg=4

" Needed for pyflakes
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

"for Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Mark trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" SuperTab
""let g:SuperTabDefaultCompletionType = "context"

" Previous files
set hidden

" CTags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R .<CR>
set tags=./tags;/

" Reload ~/.vimrc after ~/.vimrc saved
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif
