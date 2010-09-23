" Vim color file
" Converted from Textmate theme colorblind using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorblind"

if has("gui_running")
    hi Normal                         guifg=#ffffff guibg=#000000 gui=NONE
    hi Cursor                         guifg=NONE guibg=#ff00ff gui=NONE
    hi Visual                         guifg=NONE guibg=#283c78 gui=NONE
    hi CursorLine                     guifg=NONE guibg=#1a1a1a gui=NONE
    hi CursorColumn                   guifg=NONE guibg=#1a1a1a gui=NONE
    hi LineNr                         guifg=#808080 guibg=#000000 gui=NONE
    hi VertSplit                      guifg=#303030 guibg=#303030 gui=NONE
    hi MatchParen                     guifg=#ff0000 guibg=NONE gui=NONE
    hi StatusLine                     guifg=#ffffff guibg=#303030 gui=bold
    hi StatusLineNC                   guifg=#ffffff guibg=#303030 gui=NONE
    hi Pmenu                          guifg=#000000 guibg=#cccccc gui=NONE
    hi PmenuSel                       guifg=#ffffff guibg=#0080ff gui=NONE
    hi IncSearch                      guifg=NONE guibg=#324454 gui=NONE
    hi Search                         guifg=NONE guibg=#324454 gui=NONE
    hi Directory                      guifg=#96cdff guibg=NONE gui=NONE
    hi Folded                         guifg=#782dbd guibg=NONE gui=NONE
    
    hi Boolean                        guifg=#ff6400 guibg=NONE gui=NONE
    hi Character                      guifg=#ff6400 guibg=NONE gui=NONE
    hi Comment                        guifg=#782dbd guibg=NONE gui=NONE
    hi Conditional                    guifg=#96cdff guibg=NONE gui=NONE
    hi Constant                       guifg=#ff6400 guibg=NONE gui=NONE
    hi Define                         guifg=#96cdff guibg=NONE gui=NONE
    hi ErrorMsg                       guifg=#ff0000 guibg=NONE gui=NONE
    hi WarningMsg                     guifg=#ffcd00 guibg=NONE gui=NONE
    hi Float                          guifg=#ff6400 guibg=NONE gui=NONE
    hi Function                       guifg=#ff9600 guibg=NONE gui=NONE
    hi Identifier                     guifg=#ff80ff guibg=NONE gui=NONE
    hi Keyword                        guifg=#96cdff guibg=NONE gui=NONE
    hi Label                          guifg=#ffcd00 guibg=NONE gui=italic
    hi NonText                        guifg=#282828 guibg=NONE gui=NONE
    hi Number                         guifg=#ff6400 guibg=NONE gui=NONE
    hi Operator                       guifg=#96cdff guibg=NONE gui=NONE
    hi PreProc                        guifg=#ffcd00 guibg=NONE gui=NONE
    hi Special                        guifg=#ffffff guibg=NONE gui=NONE
    hi SpecialKey                     guifg=#282828 guibg=NONE gui=NONE
    hi Statement                      guifg=#96cdff guibg=NONE gui=NONE
    hi StorageClass                   guifg=#96cdff guibg=NONE gui=NONE
    hi String                         guifg=#96ff32 guibg=NONE gui=italic
    hi Tag                            guifg=#96cdff guibg=NONE gui=NONE
    hi Title                          guifg=#ffffff guibg=NONE gui=bold
    hi Todo                           guifg=#782dbd guibg=NONE gui=inverse,bold
    hi Type                           guifg=NONE guibg=NONE gui=NONE
    hi Underlined                     guifg=NONE guibg=NONE gui=underline
    
    hi rubyClass                      guifg=#96cdff guibg=NONE gui=NONE
    hi rubyFunction                   guifg=#ff9600 guibg=NONE gui=NONE
    hi rubyInterpolationDelimiter     guifg=#ff0000 guibg=NONE gui=NONE
    hi rubySymbol                     guifg=#ff6400 guibg=NONE gui=NONE
    hi rubyConstant                   guifg=#ff0000 guibg=NONE gui=NONE
    hi rubyStringDelimiter            guifg=#96ff32 guibg=NONE gui=italic
    hi rubyBlockParameter             guifg=#c0c0c0 guibg=NONE gui=underline
    hi rubyInstanceVariable           guifg=#ff00ff guibg=NONE gui=NONE
    hi rubyInclude                    guifg=#ffcd00 guibg=NONE gui=NONE
    hi rubyGlobalVariable             guifg=#c0c0c0 guibg=NONE gui=NONE
    hi rubyRegexp                     guifg=#ff0000 guibg=NONE gui=NONE
    hi rubyRegexpDelimiter            guifg=#ff0000 guibg=NONE gui=NONE
    hi rubyEscape                     guifg=#ff6400 guibg=NONE gui=NONE
    hi rubyControl                    guifg=#96cdff guibg=NONE gui=NONE
    hi rubyClassVariable              guifg=#0080ff guibg=NONE gui=NONE
    hi rubyOperator                   guifg=#96cdff guibg=NONE gui=NONE
    hi rubyException                  guifg=#ffcd00 guibg=NONE gui=NONE
    hi rubyPseudoVariable             guifg=#ff00ff guibg=NONE gui=NONE
    hi rubyRailsUserClass             guifg=#96cdff guibg=NONE gui=NONE
    hi rubyRailsARAssociationMethod   guifg=#ff9600 guibg=NONE gui=italic
    hi rubyRailsARMethod              guifg=#ff9600 guibg=NONE gui=italic
    hi rubyRailsRenderMethod          guifg=#ff9600 guibg=NONE gui=NONE
    hi rubyRailsMethod                guifg=#ff9600 guibg=NONE gui=NONE
    hi erubyDelimiter                 guifg=#96cdff guibg=NONE gui=NONE
    hi erubyComment                   guifg=#782dbd guibg=NONE gui=NONE
    hi erubyRailsMethod               guifg=#ff9600 guibg=NONE gui=NONE
    
    hi htmlTag                        guifg=#c0c0c0 guibg=NONE gui=NONE
    hi htmlEndTag                     guifg=#c0c0c0 guibg=NONE gui=NONE
    hi htmlTagName                    guifg=#96cdff guibg=NONE gui=NONE
    hi htmlArg                        guifg=#ff6400 guibg=NONE gui=NONE
    hi htmlSpecialChar                guifg=#ff0000 guibg=NONE gui=NONE
    
    hi cssURL                         guifg=#c0c0c0 guibg=NONE gui=underline
    hi cssFunctionName                guifg=NONE guibg=NONE gui=NONE
    hi cssColor                       guifg=#ff6400 guibg=NONE gui=NONE
    hi cssPseudoClassId               guifg=#ff9600 guibg=NONE gui=NONE
    hi cssClassName                   guifg=#ff9600 guibg=NONE gui=NONE
    hi cssValueLength                 guifg=#c0c0c0 guibg=NONE gui=NONE
    hi cssCommonAttr                  guifg=NONE guibg=NONE gui=NONE
    hi cssBraces                      guifg=#ffffff guibg=NONE gui=NONE
    
    hi javaScriptFunction             guifg=#ff9600 guibg=NONE gui=NONE
    hi javaScriptRailsFunction        guifg=#ff9600 guibg=NONE gui=NONE
    hi javascriptNumber               guifg=#ff6400 guibg=NONE gui=NONE
    hi javascriptNull                 guifg=#ff0000 guibg=NONE gui=NONE
    hi javaScriptPrototype            guifg=#0080ff guibg=NONE gui=NONE
    hi javaScriptLabel                guifg=#ffcd00 guibg=NONE gui=NONE
    hi javaScriptSpecial              guifg=#0000ff guibg=NONE gui=NONE
    hi javaScriptGlobalObjects        guifg=#ff00ff guibg=NONE gui=NONE
    hi javaScriptType                 guifg=#ff80ff guibg=NONE gui=NONE
    hi javaScriptBraces               guifg=NONE guibg=NONE gui=NONE
    hi javaScriptHtmlEvents           guifg=#0080ff guibg=NONE gui=NONE
    
    hi markdownH1                     guifg=#ff00ff guibg=NONE gui=NONE
    hi markdownH2                     guifg=#ff6400 guibg=NONE gui=NONE
    hi markdownH3                     guifg=#ff9600 guibg=NONE gui=NONE
    hi markdownH4                     guifg=#ffcd00 guibg=NONE gui=NONE
    hi markdownH5                     guifg=#ffcd00 guibg=NONE gui=NONE
    hi markdownH6                     guifg=#ffcd00 guibg=NONE gui=NONE
    hi markdownLinkText               guifg=#96ff32 guibg=NONE gui=NONE
    hi markdownId                     guifg=#ff80ff guibg=NONE gui=NONE
    hi markdownIdDeclaration          guifg=#ff80ff guibg=NONE gui=NONE
    hi markdownCodeDelimiter          guifg=#ff0000 guibg=NONE gui=NONE
    
    hi yamlKey                        guifg=#96cdff guibg=NONE gui=NONE
    hi yamlAnchor                     guifg=#c0c0c0 guibg=NONE gui=NONE
    hi yamlAlias                      guifg=#c0c0c0 guibg=NONE gui=NONE
    hi yamlDocumentHeader             guifg=#96ff32 guibg=NONE gui=italic
    
else
    set t_Co=256
    hi Normal ctermfg=White ctermbg=Black 
    hi Cursor ctermfg=Black ctermbg=Yellow 
    hi Keyword ctermfg=202 
    hi Define ctermfg=202 
    hi Comment ctermfg=98
    hi Type ctermfg=White 
    hi rubySymbol ctermfg=66 
    hi Identifier ctermfg=White 
    hi rubyStringDelimiter ctermfg=82 
    hi rubyInterpolation ctermfg=White 
    hi rubyPseudoVariable ctermfg=66 
    hi Constant ctermfg=228 
    hi Function ctermfg=220 
    hi Include ctermfg=220 
    hi Statement ctermfg=202
    hi String ctermfg=82 
    hi Search ctermbg=White 
    hi CursorLine cterm=NONE ctermbg=235
endif
