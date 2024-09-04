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

syntax keyword lfKeyword set cmd map
syn match lfComment "#.*$"

syntax region lfShellCall start=/\v[$&!%]\{\{/ms=s+3 end="\v\}\}"me=s-3 contains=@Sh fold


" man lf 2>/dev/null | col | rg -- '\s+(.+?) \([^()]+?\) \(default .+?\)' | awk '/anchor/ { yes = 1 } yes { print $1 }'  | tr '\n' ' '
syntax keyword lfOption anchorfind autoquit borderfmt cleaner copyfmt cursoractivefmt cutfmt dircache dircounts dirfirst dironly dirpreviews drawbox dupfilefmt errorfmt filesep findlen globsearch hidden hiddenfiles hidecursorinactive history icons ifs ignorecase ignoredia incsearch incfilter info infotimefmtnew infotimefmtold mouse number numberfmt period preserve preview previewer promptfmt ratios relativenumber reverse ruler selectfmt selmode scrolloff shell shellflag shellopts sixel smartcase smartdia sortby statfmt tabstop tagfmt tempmarks timefmt truncatechar truncatepct waitmsg wrapscan wrapscroll

syn keyword lfCommand quit up half-up page-up scroll-up down half-down page-down scroll-down updir open jump-next jump-prev top bottom high middle low toggle invert invert-below unselect glob-select glob-unselec calcdirsize clearmaps copy cut paste clear sync draw redraw load reload echo echomsg echoerr cd select delete rename source push read shell shell-pipe shell-wait shell-async find find-back find-next find-prev search search-back search-next search-prev filter setfilter mark-save mark-load mark-remove tag tag-toggle

" highlight section
highlight link lfKeyword Keyword
highlight link lfCommand Function
highlight link lfComment Comment
highlight link lfOption Type

