" slimv-r.vim:
"               R filetype plugin for Slimv
" Version:      0.9.12
" Last Change:  21 Nov 2013
" Maintainer:   Tamas Kovacs <kovisoft at gmail dot com>
" License:      This file is placed in the public domain.
"               No warranty, express or implied.
"               *** ***   Use At-Your-Own-Risk!   *** ***
"
" =====================================================================
"
"  Load Once:
if exists("b:did_ftplugin")
    finish
endif

" ---------- Begin part loaded once ----------
if !exists( 'g:slimv_lisp_loaded' )

let g:slimv_lisp_loaded = 1

" Try to autodetect Lisp executable
" Returns list [Lisp executable, Lisp implementation]
function! b:SlimvAutodetect( preferred )
    return ['R', 'R']
endfunction

" Try to find out the Lisp implementation
function! b:SlimvImplementation()
    return 'R'
endfunction

" Try to autodetect SWANK and build the command to load the SWANK server
function! b:SlimvSwankLoader()
endfunction

" Filetype specific initialization for the REPL buffer
function! b:SlimvInitRepl()
    set filetype=r
endfunction

" Lookup symbol in the list of Lisp Hyperspec symbol databases
function! b:SlimvHyperspecLookup( word, exact, all )
    return [ a:word ]
endfunction

" Source Slimv general part
runtime ftplugin/**/slimv.vim

endif "!exists( 'g:slimv_lisp_loaded' )
" ---------- End of part loaded once ----------

"runtime ftplugin/**/r.vim

" Must be called for each lisp buffer
call SlimvInitBuffer()

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

