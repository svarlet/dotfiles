"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 VUNDLE CONFIGURATION                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
"Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
"Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Bundle 'vim-ruby/vim-ruby'
"Plugin 'ecomba/vim-ruby-refactoring'
"Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'blueshirts/darcula'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'elixir-lang/vim-elixir'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Airline                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline\ 11
let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Fixes a delay that happens when leaving insert mode
set timeoutlen=50

" Wrap long lines
set wrap

" Highlight current line
set cursorline

" Make tabs as wide as 
" two spaces
set tabstop=2 shiftwidth=2
set expandtab

set backspace=indent,eol,start

" Automatically indent lines like the line above
set autoindent

" Enable line numbers
set number

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Highlight searches
set hlsearch

" Ignore case of searches unless upper case letter used
set ignorecase
set smartcase

" Dynamic search
set incsearch

" Show cursor position in status line
set ruler

" Show the parenthesis, bracket or brace related to a closing one
set showmatch

" Show the current mode
set showmode

" Visual bell instead of system sound
set visualbell

" Always show status line
set laststatus=2

" Keep at least 4 lines below cursor"
set scrolloff=4

" improve performance
set lazyredraw

" End of line characters
set fileformat=unix

" Encoding
set termencoding=utf-8
set encoding=utf-8

" allow hidden buffers
set hidden

" better command completion
set wildmenu

" Detects file updates and reload
set autoread

" Switches to line numbers relative to current line
set relativenumber
if v:version > 703
  set number " hybrid relative and absolute for current line
endif"

syntax on
set background=dark
"colorscheme solarized
"colorscheme badwolf "Cool very dark theme
colorscheme darcula "Jetbrain darkula theme

set mouse=a
set ttymouse=xterm2

" more natural moves between splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" where to save swp files, also ensure they can't overwrite each other
set directory=$HOME/.vim/swapfiles//

" unix file format
set fileformat=unix

autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Disable arrows                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Custom commands                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Move to Next methods - Mac Keyboard - english layout
nmap ∆ ]m
nmap ˚ [m

" Move to previous methods - Mac Keyboard - french layout
nmap Ï ]m
nmap È [m

" Move line up/down in normal and insert mode - Mac Keyboard - english layout
nnoremap Ô :m .+1<CR>==
inoremap Ô <Esc>:m .+1<CR>==gi
nnoremap  :m .-2<CR>==
inoremap  <Esc>:m .-2<CR>==gi

" Move line up/down in normal and insert mode - Mac Keyboard - english layout
" Move line up in normal and insert mode
nnoremap Í :m .+1<CR>==
inoremap Í <Esc>:m .+1<CR>==gi
nnoremap Ë :m .-2<CR>==
inoremap Ë <Esc>:m .-2<CR>==gi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       NerdTree Configuration                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden=1
let g:NERDTreeSortHiddenFirst=1
let g:NERDTreeHighlightCursorLine=1
let g:NERDTreeWinSize=50
nnoremap <F4> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       ctrlp Configuration                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_show_hidden=1
set tags+=tags
set tags+=gems.tags
"unlet g:ctrlp_extensions
let g:ctrlp_extensions = ['tag']
let g:ctrlp_working_path_mode = 'ra'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Commentary  Configuration                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use gc to comment or uncomment a motion or a visual selection

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Vim Ruby Configuration                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <leader>, <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Surround configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=2000
set ttimeoutlen=1000

