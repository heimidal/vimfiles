" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on
" set ofu=syntaxcomplete#Complete

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
set listchars=tab:▸\ ,eol:¬,trail:·
set foldlevelstart=0
set foldmethod=marker

" Remember global variables across vim sessions
set viminfo^=!

" -----------------------------------------------------------------------------

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

" modes
inoremap <Esc> <nop>
inoremap jj <ESC>
inoremap jk <Esc>

" Folding
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
" Command to collapse all multi-line occurrences of whitespace into one line.
map <leader>CN :%s/^\n\+/\r//<cr>:let @/=''<CR>
map <leader>CW :%s/\s\+$//<cr>:let @/=''<CR>

" Ack
map <leader>a :Ack

" toggles the taglist window
nnoremap <silent> <F8> :TlistToggle<CR>

" Make NERDCommenter add a space before/after comments
let NERDSpaceDelims=1

" Yankring
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <leader>y :YRShow<cr>
let g:yankring_history_dir=$HOME.'/.vim/tmp/yankring/'

" Formatting, TextMate-style
map <leader>q gqip

let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'


" Google's JSLint
" au BufNewFile,BufRead *.js set makeprg=gjslint\ %
" au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G


" Edit .vimrc
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>
au! BufWritePost .vimrc source %                  " reload on save

let NERDTreeIgnore=['.DS_Store']

autocmd BufRead,BufNewFile   *.md setlocal wrap linebreak

"Add the variable with the name a:varName to the statusline. Highlight it as
"'error' unless its value is in a:goodValues (a comma separated string)
function! AddStatuslineFlag(varName, goodValues)
  set statusline+=[
  set statusline+=%#error#
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',1)}"
  set statusline+=%*
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',0)}"
  set statusline+=]
endfunction

"returns a:value or ''
"
"a:goodValues is a comma separated string of values that shouldn't be
"highlighted with the error group
"
"a:error indicates whether the string that is returned will be highlighted as
"'error'
function! RenderStlFlag(value, goodValues, error)
  let goodValues = split(a:goodValues, ',')
  let good = index(goodValues, a:value) != -1
  if (a:error && !good) || (!a:error && good)
    return a:value
  else
    return ''
  endif
endfunction

" Fancy statusline.
set statusline=%t                                   "tail of the filename
set statusline+=%m                                  "modified flag
" call AddStatuslineFlag('&ff', 'unix')               "fileformat
" call AddStatuslineFlag('&fenc', 'utf-8')            "file encoding
set statusline+=%h                                  "help file flag
set statusline+=%r                                  "read only flag
set statusline+=%y                                  "filetype

" From syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" From Fugitive plugin
set statusline+=%{fugitive#statusline()}

" rvm.vim
set statusline+=%{rvm#statusline()}

set statusline+=%#error#                            "display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%{StatuslineTabWarning()}           "warnings for mixed tabs and other issues
set statusline+=%{StatuslineTrailingSpaceWarning()} "warning if there is any trailing whitespace in the file
set statusline+=%*
set statusline+=%=                                  "left/right separator
set statusline+=%c,                                 "cursor column
set statusline+=%l/%L                               "cursor line/total lines
set statusline+=\ %p                                "percent through file

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
'
"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction



if has('gui_running')
    set guifont=Monaco:h12
    colorscheme colorblind
    set background=dark
    " set spell
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




" Settings for MarkdownPreview bundle
let g:MarkdownPreviewTMP=$HOME.'/.vim/tmp/markdown/'
let g:MarkdownPreviewDefaultStyles=$HOME.'/Sites/themes/css-defaults/'
let g:MarkdownPreviewUserStyles=$HOME.'/Sites/themes/css-markdown/'
let g:MarkdownPreviewDefaultTheme = 'github'

" kill out those nasty markdown tmp files.
" TODO This needs to check if there are files present before cleaning out..
silent execute '!rm -r '.MarkdownPreviewTMP.'*'

" Needs to be moved to a plugin or a snippet
function! MarkdownPreview()
ruby << EOF
  require 'rubygems'
  require 'bluecloth'

  VIM::Buffer.current.name.nil? ? (name = 'Untitled.md') : (name = Vim::Buffer.current.name)
  file_name = name.gsub(/.(md|mkd|markdown)$/, '.html')

  if file_name == VIM::Buffer.current.name
    VIM::message('This file type is not supported for previewing markdown files')
    exit
  end

  tmp_file = VIM::evaluate('g:MarkdownPreviewTMP') +  File.basename(file_name)
  tmp_exists = File.exists?(tmp_file)
  default_styles = Dir.glob(File.join(VIM::evaluate('g:MarkdownPreviewDefaultStyles'), '*'))
  user_styles = Dir.glob(File.join(VIM::evaluate('g:MarkdownPreviewUserStyles'), '*'))
  css_namespace = VIM::evaluate('g:MarkdownPreviewDefaultTheme')
  t = ""

  def set_stylesheets(style_dir)
    style_refs = ''
    style_dir.each do |style_ref|
      if File.exists?(style_ref + '/style.css')
        style_refs += '<link href="' + style_ref + '/style.css' + '" rel="stylesheet" media="screen, projection" />'
      end
    end
    return style_refs
  end

  def set_options(style_dir, ns)
    style_names = ''
    style_dir.each do |style_name|
      if File.exists?( style_name + '/style.css')
        s_name = File.basename(style_name)
        if s_name == ns
          style_names += '<option value="' + s_name + '" selected="true">' + s_name + '</option>'
        else
          style_names += '<option value="' + s_name + '">' + s_name + '</option>'
        end
      end
    end
    return style_names
  end

  VIM::Buffer.current.count.times {|i| t += "#{VIM::Buffer.current[i + 1]}\n"}

  layout = <<-LAYOUT
  <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <style>
          * { margin: 0; padding: 0; }
        </style>
        #{set_stylesheets(default_styles)}
        #{set_stylesheets(user_styles)}
        <title>:: #{File.basename(name)} ::</title>
      </head>
      <body id="theme" class="#{css_namespace}">
        <div class="header">
          <h2>#{File.basename(name)}</h2>
          <select onchange="selectTheme(event);">
            <optgroup label="Default Themes">
              #{set_options(default_styles, css_namespace)}
            </optgroup>
            <optgroup label="User Themes">
              #{set_options(user_styles, css_namespace)}
            </optgroup>
          </select>
        </div>
        <div class="wikistyle">
          #{BlueCloth.new(t).to_html}
        </div>
        <script language='javascript' type='text/javascript'>
          var themeID = document.getElementById('theme');
          function selectTheme(e) {
            var theme = e.target.value;
            themeID.className = e.target.value;
          }
        </script>
      </body>
    </html>
    LAYOUT

  File.open(tmp_file, 'w') do |f|
    f.write(layout)
  end

  if !tmp_exists
    system("open #{tmp_file}")
  end

EOF
endfunction
:command! MDP :call MarkdownPreview()
au! BufWritePost *.md :MDP

