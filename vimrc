" pastjean's vimrc
" feel free to use, modify, destroy, attack ...
" pierrealexandre.stjean@gmail.com

set nocompatible "power to vim

" => Before <============================

"pathogen 
"includes plugins from ~/.vim/bundles
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


" => General <============================

set hidden
set autoread
set history=1000
set undolevels=1000

set title
set noerrorbells

set ff=unix fenc=utf-8 enc=utf-8 "file format & encodings

set ts=2 sw=2 sts=2 "tabs
set autoindent smartindent cindent "indenting

set nobackup
set noswapfile

" => Navigation <============================
set backspace=indent,eol,start " line change on backspace
set whichwrap=h,l,<,>,[,] " line change when going left or right

" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> k
map k gk
imap <up> <C-o>gk
map <down> j
map j gj
imap <down> <C-o>gj


" => Display <============================
colorscheme blackboard
set listchars=tab:»\ ,eol:¬

set ruler
set number
set cmdheight=1
set laststatus=2
set statusline=%F%m%r%h\ %w\ Line:\ %l/%L:%c

set showmatch showmode showcmd
set cursorline " Cursor highlight

" => Searching <============================

set ignorecase incsearch hlsearch

" => Mappings <============================

let mapleader = ","

nmap <leader>n :set number! <CR>
nmap <leader>l :set list!<CR>
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

"fast edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" => Shortcut keys
inoremap <C-CR> <C-O>o
imap hh =>
imap aa @
imap <C-S> <C-O>:w<CR>
nmap <C-S> :w<CR>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv
imap <S-Tab> <C-o><<

vnoremap <C-C> "+y "Copy paste copy 

" => Visual Wrap Text
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
"dont know how to do it otherwise , it conflicts with my ctrl+c
vnoremap "  <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>
