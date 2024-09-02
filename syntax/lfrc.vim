" NOTE:
" vim syntax file for lfrc
if exists("b:current_syntax")
	finish
endif

syn include @Sh syntax/sh.vim
let b:current_syntax = "lfrc"

set commentstring=#\ %s
set tabstop=4
set shiftwidth=4
set expandtab

syntax keyword lfBuiltinCommand set cmd map
highlight link lfBuiltinCommand Keyword

syntax region shellCall start=/\v[$&!%]\{\{/ms=s+3 end="\v\}\}"me=s-3 contains=@Sh fold

" man lf 2>/dev/null | col | rg -- '\s+(.+?) \([^()]+?\) \(default .+?\)' | awk '/anchor/ { yes = 1 } yes { print $1 }'  | tr '\n' ' '
syntax keyword lfOption anchorfind autoquit borderfmt cleaner copyfmt cursoractivefmt cutfmt dircache dircounts dirfirst dironly dirpreviews drawbox dupfilefmt errorfmt filesep findlen globsearch hidden hiddenfiles hidecursorinactive history icons ifs ignorecase ignoredia incsearch incfilter info infotimefmtnew infotimefmtold mouse number numberfmt period preserve preview previewer promptfmt ratios relativenumber reverse ruler selectfmt selmode scrolloff shell shellflag shellopts sixel smartcase smartdia sortby statfmt tabstop tagfmt tempmarks timefmt truncatechar truncatepct waitmsg wrapscan wrapscroll
