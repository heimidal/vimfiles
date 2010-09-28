" Vim color file
" Converted from Textmate theme colorblind using Coloration v0.2.4 (http://github.com/sickill/coloration)

hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorblind"

" Color values
"
" COLOR                      BRIGHT
" -----------------------------------------------------------------------------
" Black        #000000   |   Gray             #555555
" Red          #FF0000   |   Light Red        #E52253
" Green        #3D9C00   |   Light Green      #96FF32
" Brown        #FF9600   |   Yellow           #FFCD00
" Blue         #0080FF   |   Light Blue       #96CDFF
" Magenta      #FF00FF   |   Light Magenta    #FF80FF
" Cyan         #00FFFF   |   Light Cyan       #782DBD
" Light Gray   #999999   |   White            #FFFFFF
" -----------------------------------------------------------------------------

hi Normal                         guifg=#FFFFFF   guibg=#000000 gui=NONE      ctermfg=White    ctermbg=Black  cterm=NONE
hi Cursor                         guifg=NONE      guibg=#FF00FF gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi Visual                         guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi CursorLine                     guifg=NONE      guibg=#1A1A1A gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi CursorColumn                   guifg=NONE      guibg=#1A1A1A gui=NONE      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi LineNr                         guifg=#555555   guibg=NONE    gui=NONE      ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi VertSplit                      guifg=#000000   guibg=#333333 gui=NONE      ctermfg=Black    ctermbg=Gray   cterm=NONE
hi MatchParen                     guifg=#FF0000   guibg=NONE    gui=NONE      ctermfg=Red      ctermbg=NONE   cterm=NONE
hi StatusLine                     guifg=#FFFFFF   guibg=#0080FF gui=bold      ctermfg=White    ctermbg=Blue  cterm=NONE
hi StatusLineNC                   guifg=#FFFFFF   guibg=#0080FF gui=NONE      ctermfg=White    ctermbg=Blue  cterm=NONE
hi Pmenu                          guifg=#000000   guibg=#999999 gui=NONE      ctermfg=Black    ctermbg=Grey   cterm=bold
hi PmenuSel                       guifg=#FFFFFF   guibg=#0080ff gui=NONE      ctermfg=White    ctermbg=Blue   cterm=NONE
hi IncSearch                      guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=Blue   cterm=bold
hi Search                         guifg=NONE      guibg=#1B2B66 gui=NONE      ctermfg=NONE     ctermbg=Blue   cterm=bold
hi Directory                      guifg=#96CDFF   guibg=NONE    gui=NONE      ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Folded                         guifg=#782DBD   guibg=NONE    gui=NONE      ctermfg=Cyan     ctermbg=NONE   cterm=bold

hi Boolean                        guifg=#00FFFF   guibg=NONE  gui=NONE        ctermfg=Cyan     ctermbg=NONE   cterm=NONE
hi Character                      guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Comment                        guifg=#782DBD   guibg=NONE  gui=NONE        ctermfg=Cyan     ctermbg=NONE   cterm=bold
hi Conditional                    guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Constant                       guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi Define                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi ErrorMsg                       guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi WarningMsg                     guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi Float                          guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi Function                       guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Identifier                     guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi Keyword                        guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Label                          guifg=#FFCD00   guibg=NONE  gui=italic      ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi NonText                        guifg=#333333   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi Number                         guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi PreProc                        guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi Special                        guifg=#FFFFFF   guibg=NONE  gui=italic      ctermfg=White    ctermbg=NONE   cterm=NONE
hi SpecialKey                     guifg=#333333   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=NONE
hi Statement                      guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi StorageClass                   guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi String                         guifg=#96FF32   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=bold
hi Tag                            guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi Title                          guifg=#FFFFFF   guibg=NONE  gui=bold        ctermfg=White    ctermbg=NONE   cterm=NONE
hi Todo                           guifg=#782DBD   guibg=NONE  gui=inverse     ctermfg=Cyan     ctermbg=NONE   cterm=bold
hi Type                           guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi Delimiter                      guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi Operator                       guifg=NONE      guibg=NONE  gui=NONE        ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi Underlined                     guifg=NONE      guibg=NONE  gui=underline   ctermfg=NONE     ctermbg=NONE   cterm=NONE


" Language Specific Overrides

hi rubyClass                      guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi rubyFunction                   guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyInterpolationDelimiter     guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi rubySymbol                     guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi rubyConstant                   guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi rubyStringDelimiter            guifg=#96FF32   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=bold
hi rubyBlockParameter             guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi rubyInstanceVariable           guifg=#FF00FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=NONE
hi rubyInclude                    guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi rubyGlobalVariable             guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi rubyRegexp                     guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi rubyRegexpDelimiter            guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi rubyEscape                     guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyControl                    guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi rubyClassVariable              guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi rubyOperator                   guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi rubyException                  guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi rubyPseudoVariable             guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi rubyRailsUserClass             guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi rubyRailsARAssociationMethod   guifg=#FF9600   guibg=NONE  gui=italic      ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyRailsARMethod              guifg=#FF9600   guibg=NONE  gui=italic      ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyRailsRenderMethod          guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi rubyRailsMethod                guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE

hi htmlTag                        guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi htmlEndTag                     guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi htmlTagName                    guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlLink                       guifg=#00FFFF   guibg=NONE  gui=underline   ctermfg=Magenta  ctermbg=NONE   cterm=NONE
hi htmlArg                        guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi htmlSpecialChar                guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE
hi htmlItalic                     guifg=NONE      guibg=NONE  gui=italic      ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi htmlBold                       guifg=NONE      guibg=NONE  gui=bold        ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi htmlBoldItalic                 guifg=NONE      guibg=NONE  gui=bold,italic ctermfg=NONE     ctermbg=NONE   cterm=NONE
hi htmlH1                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlH2                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlH3                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlH4                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlH5                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi htmlH6                         guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold

hi cssURL                         guifg=#00FFFF   guibg=NONE  gui=underline   ctermfg=Magenta  ctermbg=NONE   cterm=NONE
hi cssFunctionName                guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi cssColor                       guifg=#FFCD00   guibg=NONE  gui=NONE        ctermfg=Yellow   ctermbg=NONE   cterm=NONE
hi cssPseudoClassId               guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi cssClassName                   guifg=#FF9600   guibg=NONE  gui=NONE        ctermfg=Brown    ctermbg=NONE   cterm=NONE
hi cssValueLength                 guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi cssImportant                   guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi cssStringQQ                    guifg=#3D9C00   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=NONE
hi cssBraces                      guifg=#FFFFFF   guibg=NONE  gui=NONE        ctermfg=White    ctermbg=NONE   cterm=NONE
hi cssCommonAttr                  guifg=NONE      guibg=NONE  gui=NONE        ctermfg=NONE     ctermbg=NONE   cterm=NONE

hi javascriptNull                 guifg=#00FFFF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=NONE
hi javaScriptPrototype            guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi javaScriptSpecial              guifg=#0000FF   guibg=NONE  gui=NONE        ctermfg=Cyan     ctermbg=NONE   cterm=bold
hi javaScriptGlobalObjects        guifg=#E52253   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=bold
hi javaScriptHtmlEvents           guifg=#0080FF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=NONE
hi javaScriptStringD              guifg=#3D9C00   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=NONE
hi javaScriptBraces               guifg=#FFFFFF   guibg=NONE  gui=NONE        ctermfg=White    ctermbg=NONE   cterm=NONE

hi markdownLinkText               guifg=#96ff32   guibg=NONE  gui=italic      ctermfg=Green    ctermbg=NONE   cterm=bold
hi markdownId                     guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi markdownIdDeclaration          guifg=#FF80FF   guibg=NONE  gui=NONE        ctermfg=Magenta  ctermbg=NONE   cterm=bold
hi markdownCodeDelimiter          guifg=#FF0000   guibg=NONE  gui=NONE        ctermfg=Red      ctermbg=NONE   cterm=NONE

hi yamlKey                        guifg=#96CDFF   guibg=NONE  gui=NONE        ctermfg=Blue     ctermbg=NONE   cterm=bold
hi yamlAnchor                     guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi yamlAlias                      guifg=#999999   guibg=NONE  gui=NONE        ctermfg=Gray     ctermbg=NONE   cterm=bold
hi yamlDocumentHeader             guifg=#96CDFF   guibg=NONE  gui=italic      ctermfg=Blue     ctermbg=NONE   cterm=bold

