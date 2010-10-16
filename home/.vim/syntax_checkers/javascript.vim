"============================================================================
"File:        javascript.vim
"Description: Syntax checking plugin for syntastic.vim using nodelint
"Maintainer:  Matthew Kitt <mk dot kitt at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================
if exists('loaded_javascript_syntax_checker')
    finish
endif
let loaded_javascript_syntax_checker = 1

if !executable('node')
    finish
endif

if !exists('g:Nodelint')
  let g:Nodelint = $HOME.'/.vim/syntax_checkers/compilers/nodelint/nodelint'
endif

" default config to nodelint's config right away...
let s:config = $HOME.'/.vim/syntax_checkers/compilers/nodelint/config.js'

" ...but if there is a global from .vimrc, use that...
if exists('g:NodelintConfig')
  let s:config = g:NodelintConfig
endif

" ...unless there is one in the cwd at startup, let that override nodelint's config.
if filereadable(getcwd() . '/nodelint-config.js')
  let s:config = getcwd() . '/nodelint-config.js'
endif

if !exists('g:NodelintReporter')
  let g:NodelintReporter = $HOME.'/.vim/syntax_checkers/compilers/nodelint/examples/vim/syntastic-reporter.js'
endif

function! SyntaxCheckers_javascript_GetLocList()
  let makeprg = 'node ' . g:Nodelint . ' ' . shellescape(expand("%")) . ' --config ' . s:config . ' --reporter ' . g:NodelintReporter
  let errorformat = '%fline\ %l column\ %c Error: %m'
  return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

