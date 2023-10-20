if exists("current_compiler")
  finish
endif
let current_compiler = "typescript"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim


CompilerSet makeprg=sh\ -c\ 'yarn\ tsc;\ yarn\ eslint\ --format\ compact\ --ext\ .ts,.tsx,.js,.jsx,.json\ --fix\ .'

" tsc (error/warning)
CompilerSet errorformat=%f:%l:%c\ -\ %trror\ TS%n:\ %m
CompilerSet errorformat+=%f:%l:%c\ -\ %tarning\ TS%n:\ %m
" eslint compact (error/warning)
CompilerSet errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %trror\ -\ %m
CompilerSet errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %tarning\ -\ %m
" tsc alt
CompilerSet errorformat+=%f\ %#(%l\\,%c):\ %trror\ TS%n:\ %m
" tsc partial (error/warning)
CompilerSet errorformat+=%trror\ TS%n:\ %m
CompilerSet errorformat+=%tarning\ TS%n:\ %m
" ignore any unmatched line
CompilerSet errorformat+=%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
