"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 VUNDLE CONFIGURATION                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype on                   " required for compatibility with Mac 
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

Plugin 'itchny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'


Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'
Plugin 'kovisoft/slimv'
Plugin 'elzr/vim-json'
Plugin 'othree/xml.vim'
Plugin 'dracula/vim'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Syntastic                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Lightline                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Fira\ Code\ 14
let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ }

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
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=tab:\ \ ,trail:\ ,eol:\ ,nbsp:_

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
set ttyfast
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
colorscheme dracula
" colorscheme Tomorrow-Night

set mouse=a
set ttymouse=xterm2

"Support for 256 colors
set t_Co=256

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

let mapleader=","

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
"unlet g:ctrlp_extensions
let g:ctrlp_extensions = ['tag']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 'r'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Surround configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=2000
set ttimeoutlen=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Mappings to handle tabs                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <right> gt
" nnoremap <left>  gT
nnoremap <C-t>   :tabnew<CR>
" inoremap <right> <Esc>gti
" inoremap <left>  <Esc>gTi
inoremap <C-t>   <Esc>:tabnew<CR>


