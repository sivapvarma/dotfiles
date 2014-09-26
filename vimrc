set nocompatible            " disable vi compatibility
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Sensible defaults for vim
Plugin 'tpope/vim-sensible'

" Python PEP 8 checking - requires flake8
" pip install flake8
Plugin 'nvie/vim-flake8'

" Solarized Colorscheme
Plugin 'altercation/vim-colors-solarized'

" Syntax highlighting
Plugin 'Markdown'

" Git wrapper for vim
Plugin 'tpope/vim-fugutive'

" Vim support for Julia
Plugin 'JuliaLang/julia-vim'

" add all plugins before this line
call vundle#end()

filetype plugin indent on

" Solarized colorscheme for Vim
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

" Vim has spellcheck 
" set spell
" ]s [s
" zg zw z= 1z=
" .vim/spell/en.utf-8.add

" Store the swp and backup files in a sparate directory
" Dropbox is syncing hidden files also :-)
set dir=~/.vim/swap,/tmp,.
set bdir=~/.vim/backup,/tmp,.

" List chars
set list
set listchars=""
" set listchars=tab:»·
set listchars=tab:▸\ " TextMate tab character
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=nbsp:·
set listchars+=eol:¬

set backspace=indent,eol,start

" Text , tab and Indentation Related
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set linebreak
set textwidth=500
set colorcolumn=80

set autoindent
set smartindent
set wrap            "Wrap Lines

set number          " line numbers on
set showmatch       " show matching brackets

"set guifont=Monaco\ 10 "If this does not work google
if has('gui_running')
    set guifont=Inconsolata\ 14
    " set guifont=Consolas:h12:cDEFAULT
endif

set hlsearch        " highlight search
set ignorecase      " do case insensitive matching
set smartcase       " be sensitive when there's a capital letter
set incsearch

" Abbreviations
abbreviate #i #include
abbreviate #d #define

" Remove the toolbar
" this makes it look clean in windows as gvim on windows has bad toolbar
" icons
if has('gui_running')
    set guioptions-=T   " remove toolbar icons
    set guioptions-=m   " remove menu bar to give a terminal like feel
endif
" set guioptions-=T   " remove toolbar icons
" set guioptions-=m   " remove menu bar to give a terminal like feel

" use <C-b> to paste from system clipboard
" <C-v> is already used in Vim to trigger Visual Block mode
map <C-b> "+p

" use <C-c> to copy to system clipboard
" the text to copy should be selected using visual mode
map <C-c> "+y
