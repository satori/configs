" no compatibility with vi
set nocompatible

" syntax highlighting
syntax on

if has("gui_running")
	colors desert
	" line numbers color
	hi LineNr guifg=grey45 guibg=grey20
endif

" enable filetype plugins and indents
filetype on
filetype plugin on
filetype indent on

set ttyfast

set tabstop=4 shiftwidth=4 softtabstop=4 autoindent smartindent

" prefer unix over windows over mac formats
set ffs=unix,dos,mac

" utf-8 default encoding
set enc=utf-8

" show line numbers
set number

" read file again, if it was changed outside of vim
set autoread

" selection, cut/copy/paste
so $VIMRUNTIME/mswin.vim

" open/close NERDTree
nmap <silent><C-n> :NERDTreeToggle<CR>
imap <silent><C-n> <C-o>:NERDTreeToggle<CR>

" ignore some files in NERDTree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$']

" buffer explorer
nmap <C-S-r> :BufExplorer<CR>
vmap <C-S-r> :BufExplorer<CR>
imap <C-S-r> <C-o>:BufExplorer<CR>

" previous buffer
nmap <A-Left> :bp<CR>
vmap <A-Left> :bp<CR>
imap <A-Left> <C-o>:bp<CR>

" next buffer
nmap <A-Right> :bn<CR>
vmap <A-Right> :bn<CR>
imap <A-Right> <C-o>:bn<CR>

" close file
ino <C-q> <C-o>:q<CR>
nno <C-q> :q<CR>

" some usefull hotkeys from my Eclipse
ino <C-d> <C-o>dd
nno <C-d> dd

" move lines in normal, insert and visual modes
nno <A-Down> :m+<CR>==
ino <A-Down> <Esc>:m+<CR>==gi
vno <A-Down> :m'>+<CR>gv=gv
nno <A-Up> :m-2<CR>==
ino <A-Up> :m-2<CR>==gi
vno <A-Up> :m-2<CR>gv=gv

" tab management
ino <silent><C-t> <C-o>:tabnew<CR>
nno <silent><C-t> :tabnew<CR>

" don't bell or blink
set noeb
set vb t_vb=

