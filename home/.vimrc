" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on

" Security
set modelines=0

" Tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
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

" Color scheme (terminal - change below for gui)
syntax on
set background=dark
colorscheme colorblind

" Backups
set history=1000          " remember more commands and search history
set undolevels=1000       " use many muchos levels of undo
set nobackup              " do not keep backup files, it's 70's style cluttering
set directory=~/.vim/tmp/swap//   " swap files

" Leader
let mapleader = ","

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

" Soft/hard wrapping
" set nowrap
set wrap
set textwidth=80
set formatoptions=qrn1
" set colorcolumn=85

" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=tab:▸\ ,eol:¬

" NERD Tree
map <F2> :NERDTreeToggle<cr>
" let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" Use the damn hjkl keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" And make them fucking work, too.
nnoremap j gj
nnoremap k gk

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>v<C-w>l

" Folding
set foldlevelstart=0
nnoremap <Space> za
vnoremap <Space> za
au BufNewFile,BufRead *.html map <leader>ft Vatzf

function! MyFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction
set foldtext=MyFoldText()

" Fuck you, help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Various syntax stuff
" au BufNewFile,BufRead *.less set filetype=less
" au BufRead,BufNewFile *.scss set filetype=scss

au BufNewFile,BufRead *.m*down set filetype=markdown
au BufNewFile,BufRead *.m*down nnoremap <leader>1 yypVr=
au BufNewFile,BufRead *.m*down nnoremap <leader>2 yypVr-
au BufNewFile,BufRead *.m*down nnoremap <leader>3 I### <ESC>

" Sort CSS
map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<CR>

" Clean whitespace
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Exuberant ctags!
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F5> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude='@.ctagsignore' .<cr>

" Ack
map <leader>a :Ack 

" Make NERDCommenter add a space before/after comments
let NERDSpaceDelims=1

" Yankring
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <leader>y :YRShow<cr>

" Formatting, TextMate-style
map <leader>q gqip

" nmap <leader>m :make<cr>

" Google's JSLint
au BufNewFile,BufRead *.js set makeprg=gjslint\ %
au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G


command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction


" TODO: Put this in filetype-specific files
" au BufNewFile,BufRead *.less set foldmethod=marker
" au BufNewFile,BufRead *.less set foldmarker={,}
" au BufNewFile,BufRead *.less set nocursorline
" au BufRead,BufNewFile /etc/nginx/conf/* set ft=nginx
" au BufRead,BufNewFile /etc/nginx/sites-available/* set ft=nginx
" au BufRead,BufNewFile /usr/local/etc/nginx/sites-available/* set ft=nginx

" Easier linewise reselection
map <leader>v V`]

" HTML tag closing
inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a

" Faster Esc
inoremap <Esc> <nop>
inoremap jj <ESC>

" Scratch
" nmap <leader><tab> :Sscratch<cr><C-W>x<C-j>:resize 15<cr>

" Diff
" nmap <leader>d :!hg diff %<cr>

" Rainbows!
nmap <leader>R :RainbowParenthesesToggle<CR>

" Edit .vimrc
nmap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
au! BufWritePost .vimrc source %                  " reload on save

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Easy filetype switching
" nnoremap _dt :set ft=htmldjango<CR>
" nnoremap _jt :set ft=htmljinja<CR>

" Disable useless HTML5 junk
" let g:event_handler_attributes_complete = 0
" let g:rdfa_attributes_complete = 0
" let g:microdata_attributes_complete = 0
" let g:atia_attributes_complete = 0

" Shouldn't need shift
nnoremap ; :

" Save when losing focus
au FocusLost * :wa

" Stop it, hash key
inoremap # X<BS>#

if has('gui_running')
    set guifont=Monaco:h12
    colorscheme colorblind
    set background=dark
    set transparency=15

    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    if has("gui_macvim")
        macmenu &File.New\ Tab key=<nop>
        map <leader>t <Plug>PeepOpen
    end

    let g:sparkupExecuteMapping = '<D-e>'

    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif
