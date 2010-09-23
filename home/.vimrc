" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on

" Security
set modelines=0

" Basic options
set encoding=utf-8
set scrolloff=3
set sidescrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set noerrorbells
set novisualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set title
set laststatus=2
set splitbelow splitright
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set nowrap
set list
set listchars=tab:▸\ ,eol:¬

" Color scheme (terminal - change below for gui)
syntax on
set background=dark
colorscheme colorblind

" Leader and key bindings
let mapleader = ","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :

map <F2> :NERDTreeToggle<cr>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>v<C-w>l
map <leader>v V`]

inoremap <F1> <ESC>:set invfullscreen<CR>
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

inoremap <Esc> <nop>
inoremap jj <ESC>

" Folding
set foldlevelstart=0
nnoremap <Space> za
vnoremap <Space> za

" Backups
set history=1000
set undolevels=1000
set nobackup
set directory=~/.vim/tmp/swap//

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
set grepprg=ack
map <leader><space> :let @/=''<cr>
runtime macros/matchit.vim
nmap <tab> %
vmap <tab> %

" Macros
" nmap <leader>m :make<cr>


" Various syntax stuff
au BufRead,BufNewFile *.scss set filetype=scss
au BufNewFile,BufRead *.m*down set filetype=markdown

" Sort CSS
map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<CR>

" Clean whitespace
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Ack
map <leader>a :Ack 

" Make NERDCommenter add a space before/after comments
let NERDSpaceDelims=1

" Yankring
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <leader>y :YRShow<cr>

" Formatting, TextMate-style
map <leader>q gqip

" Google's JSLint
au BufNewFile,BufRead *.js set makeprg=gjslint\ %
au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G

" HTML tag closing
inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a

" Rainbows
nmap <leader>R :RainbowParenthesesToggle<CR>

" Edit .vimrc
nmap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
au! BufWritePost .vimrc source %                  " reload on save

let NERDTreeIgnore=['.DS_Store']


if has('gui_running')
    set guifont=Monaco:h12
    colorscheme colorblind
    set background=dark
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    if has("gui_macvim")
        set transparency=15
        macmenu &File.New\ Tab key=<nop>
        " map <leader>t <Plug>PeepOpen
    end

    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f\                                             " file name
    set titlestring+=%h%m%r%w                                        " flags
    set titlestring+=\ -\ %{v:progname}                              " program name
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif

