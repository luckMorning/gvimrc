set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
 " let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
 " if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
   " if &sh =~ '\<cmd'
    "  let cmd = '""' . $VIMRUNTIME . '\diff"'
     " let eq = '"'
   " else
    "  let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
   " endif
  "else
   " let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction
syntax on
set number

"set fileencoding=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
"set encoding=gb2312
"set tenc=gb2321

"""settings"""""
set t_Co=256
""set background=dark
filetype plugin on
"colorscheme dracula
set autoindent
set smarttab
set smartindent
set cindent
set tabstop=4
set nobackup
"set no
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nu
set autoindent
set cindent
set ruler
"colorscheme solarized
"colorscheme monokai
"colorscheme dream
"colorscheme ron
"colorscheme morning
"colorscheme murphy
colorscheme mine
colorscheme ncy
"colorscheme noname
"colorscheme default
"colorscheme delek
"colorscheme desert

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd vimenter * if !argc() |NERDTree| endif  
autocmd! bufwritepost _vimrc source ~\_vimrc
nmap <tab> <C-w><C-w>


nmap <F2> :NERDTree<CR>
set laststatus=2
set scrolloff=3
let NERDTreeDirArrow=1
"set statusline=%F%m%r%h%w\ [format=%{&ff}]\
let g:airline_theme="molokai"
let g:airline#extensions#tablline#left_sep="\u2b80"
let g:airline#extensions#tablline#left_alt_sep="\u2b81"
let g:airline#extensions#tablline#buffer_nr_show=1
let g:neocomplcache_enable_at_startup=1
let g:NERDTreeWinPos="left"
let g:airline_left_sep = '>>'
"let g:airline_left_alt_sep = 'cy'
let g:airline_right_sep = '<<'
"let g:airline_right_alt_sep = 'yc'
"let g:airline_symbols.linenr = 'Line: '
"let g:airline_symbols.branch = 'a'

imap { {}<esc>i
inoremap ( ()<esc>i
imap [ []<left>

map <F5> :call Complier()<CR>

func! Complier ()
	exec "!cls"
	exec "w"
	if &filetype == 'c' || &filetype == 'cpp'
		exec "!g++ % -o %< -lwsock32"
		exec "!%<"
	endif
endfunc

