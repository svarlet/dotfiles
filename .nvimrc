"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-PLUG CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'janko-m/vim-test'

Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'vim-ruby/vim-ruby'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'rking/ag.vim'

"snipmate and its dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'blueshirts/darcula'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'
Plug 'mattreduce/vim-mix'

" HTML plugins
Plug 'rstacruz/sparkup'

" Add plugins to &runtimepath
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-TEST CONFIGURATION                                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#strategy = "neovim"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE CONFIGURATION                                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline\ 12
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
" Use flat separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" vim-bufferline should not print to the statusline as well
let g:bufferline_echo = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM GLOBAL CONFIGURATION                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fixes a delay that happens when leaving insert mode
set timeoutlen=50

" Wrap long lines
set wrap

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2 shiftwidth=2
set expandtab

" Enable line numbers
set number

" Show “invisible” characters
set lcs=tab:\ \ ,trail:\ ,eol:\ ,nbsp:_

set list

" Ignore case of searches unless upper case letter used
set ignorecase
set smartcase

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

" allow hidden buffers
set hidden

" Switches to line numbers relative to current line
set relativenumber

syntax on
set background=dark
colorscheme solarized

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
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
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
let g:ctrlp_open_new_file = 'r'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Commentary  Configuration                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use gc to comment or uncomment a motion or a visual selection
" Examples:
" gcw to comment a word
" gcap to comment a paragraph
" v3jgc to select the next 3 lines and comment them out

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Vim Ruby Configuration                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <leader>, <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Surround configuration                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=2000
set ttimeoutlen=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Mappings to handle tabs                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <right> gt
nnoremap <left>  gT
nnoremap <C-t>   :tabnew<CR>
inoremap <right> <Esc>gti
inoremap <left>  <Esc>gTi
inoremap <C-t>   <Esc>:tabnew<CR>

