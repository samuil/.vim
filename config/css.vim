" " Commands to pull all Hex codes into TOCs and format them
:command! -nargs=1 Swatches %g/#\x\{3,6\};/co<args>
:command! -nargs=1 CleanHexes <args>s/^.*\(#\x\+;*$\)/ \* \1/g
:command! -nargs=1 TOC %g/\/\*\ *@/co<args>
