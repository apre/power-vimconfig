set nocompatible

set encoding=utf-8
" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
filetype plugin indent on
 
" CD = Change to Directory of Current file
command CD cd %:p:h

" Nerdtree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"let NERDTreeShowBookmarks=1
"let NERDTreeChDirMode=0
"let NERDTreeQuitOnOpen=0
"let NERDTreeMouseMode=2
"let NERDTreeShowHidden=0
"let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
"let NERDTreeKeepTreeInNewTab=1
"let g:nerdtree_tabs_open_on_gui_startup=0
 


" Autoload Doxygen highlighting
let g:load_doxygen_syntax=1

set backspace=indent,eol,start

"source $VIMRUNTIME/mswin.vim



set background=dark
colorscheme solarized
set hlsearch
set autowrite

map <F4> :mak!


" CTRL-X and SHIFT-Del are Cut
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <S-Insert>		"+gP

if exists('&colorcolumn')
	execute "set colorcolumn=" . join(range(81,335), ',')
endif

:match ErrorMsg '\%>80v.\+'
set number
command HighLightEol match ErrorMsg '\%>80v.\+'
command UnHighlightEol match ErrorMsg //


