
" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on


" Preferences
" -----------------------------------------------------------------------------
set modelines=0
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
set listchars=tab:▸\ ,eol:¬,trail:·
set foldlevelstart=0
set foldmethod=marker
set formatoptions=tcq
" set viminfo^=!                  " Remember global variables across vim sessions

" Backups
set history=1000
set undolevels=1000
set nobackup
set directory=~/.vim/tmp/swap//

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
set grepprg=ack
runtime macros/matchit.vim


let mapleader = ','

command! -nargs=* Wrap set wrap linebreak nolist


" Themes and GUI settings
" -----------------------------------------------------------------------------
syntax on
set background=dark
colorscheme colorblind

" GUI specific settings
if has('gui_running')
  set guifont=MesloLGM:h12
  colorscheme colorblind
  set background=dark
  set go-=T
  set go-=l
  set go-=L
  set go-=r
  set go-=R
  if has('gui_macvim')
    set transparency=15
    set fuoptions=maxhorz,maxvert
    macmenu &File.New\ Tab key=<nop>
  end
endif

" Set the title bar to something meaningful
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                                             " file name
  set titlestring+=%h%m%r%w                                        " flags
  set titlestring+=\ -\ %{v:progname}                              " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif

" !- See the statusline plugin for status line settings...


" Plugin configurations
" -----------------------------------------------------------------------------
let NERDSpaceDelims=1
let NERDTreeIgnore=['.DS_Store']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:CommandTMaxHeight=20
let g:acp_enableAtStartup = 0

" Popup menu behavior and supertab
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:SuperTabLongestHighlight = 1

" Key mapping
" -----------------------------------------------------------------------------
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
" inoremap <Esc> <nop>
inoremap jj <ESC>
inoremap jk <Esc>

" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Block movement
nmap <tab> %
vmap <tab> %

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Start searching ..? Not sure this is needed since we are using ack
nnoremap / /\v
vnoremap / /\v

inoremap <F1> <ESC>:set invfullscreen<CR>
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

map <F2> :NERDTreeToggle<cr>
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <F8> :TlistToggle<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv


" Leader mapping
" -----------------------------------------------------------------------------
map <leader>a :Ack

" Refresh running browser
map <silent><leader>r :RRB<cr>

" Toggle wrapping in the current buffer
nmap <silent> <leader>w :set wrap!<cr>

" Edit .vimrc
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Clear the search highlight
map <leader><space> :let @/=''<cr>

" Sort CSS
map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<cr>

" Collapse all multi-line occurrences of whitespace into one line
map <leader>CN :%s/^\n\+/\r//<cr>:let @/=''<cr>

" Clean whitespace
map <leader>CW :%s/\s\+$//<cr>:let @/=''<cr>

" Retab My Authority.
map <silent><leader>CT :retab<cr>

" Open current buffer in a new split
map <leader>s <C-w>v<C-w>l

" Select the text that was last edited/pasted
map <leader>v V`]

" Toggle spelling hints
nmap <silent> <leader>z :set spell!<cr>

" Reload ctags
map <leader>rt :!ctags --extra=+f -R *<cr><cr>


" Event handling
" -----------------------------------------------------------------------------

" Reload .vimrc after it's been saved
au! BufWritePost .vimrc source %

" Set formatting on specific files
autocmd BufRead,BufNewFile *.md,*.markdown,*.mkd,*.txt setlocal wrap linebreak nolist spell


" Reload all snippets when creating new ones.
au! BufWritePost *.snippets call ReloadAllSnippets()

" File type settings on load
au BufRead,BufNewFile *.scss set filetype=scss
au BufNewFile,BufRead *.m*down set filetype=markdown
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.json set filetype=json

" GUI Specific settings
if has('gui_running')
  " Convert markdown to html on save
  au! BufWritePost *.md,*.markdown,*.mkd :MDP
endif

" Enable autosave
au FocusLost * :wa


" Load up the user's local .vimrc config
" -----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

