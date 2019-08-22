set nowrap

" Make vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Enable line numbers
" set number
" Highlight current line
" set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Highlight searches
set hlsearch
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=1
" Enable mouse in all modes
"set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Enable syntax highlighting
syntax on

" Highlight colours
:highlight LineNr ctermfg=DarkGray ctermbg=NONE
" :hi CursorLine cterm=NONE ctermbg=DarkGray

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunc

" Similar to :retab, only that it will not replace leading whitespace
func! RetabIndents()
  let saved_view = winsaveview()
  execute '%s@^\(\ \{'.&ts.'\}\)\+@\=repeat("\t", len(submatch(0))/'.&ts.')@e'
  call winrestview(saved_view)
endfunc

" Add commands for StripWhitespace and RetabIndents functions
command! StripWhitespace call StripWhitespace()
command! RetabIndents call RetabIndents()

" Call StripWhitespace and RetabIndents functions on file save
autocmd BufWritePre * :StripWhitespace
autocmd BufWritePre * :RetabIndents

" Automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
".vimrc" [noeol] 81L, 2055C written
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=1
" Enable mouse in all modes
"set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Enable syntax highlighting
syntax on

" Highlight colours
:highlight LineNr ctermfg=DarkGray ctermbg=NONE
" :hi CursorLine cterm=NONE ctermbg=DarkGray

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunc

" Similar to :retab, only that it will not replace leading whitespace
func! RetabIndents()
  let saved_view = winsaveview()
  execute '%s@^\(\ \{'.&ts.'\}\)\+@\=repeat("\t", len(submatch(0))/'.&ts.')@e'
  call winrestview(saved_view)
endfunc

" Add commands for StripWhitespace and RetabIndents functions
command! StripWhitespace call StripWhitespace()
command! RetabIndents call RetabIndents()

" Call StripWhitespace and RetabIndents functions on file save
autocmd BufWritePre * :StripWhitespace
autocmd BufWritePre * :RetabIndents

" Automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
