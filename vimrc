" pastjean's vimrc
" feel free to use, modify, destroy, attack ...
" pierrealexandre.stjean@gmail.com

set nocompatible "power to vim

" => General <============================

set autoread
set history=400
set noerrorbells

set ff=unix fenc=utf-8 enc=utf-8 "file format & encodings

filetype on
filetype plugin indent on
syntax on

set autoindent smartindent cindent "indenting
set ts=2 sw=2 sts=2 "tabs

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

set ruler
set number
set cmdheight=2
set laststatus=2
set statusline=%F%m%r%h\ %w\ Line:\ %l/%L:%c
set listchars=tab:»\ ,eol:¬

set showmatch showmode showcmd
set cursorline " Cursor highlight

" => Search <============================

set ignorecase incsearch hlsearch

" => Mappings <============================

let mapleader = ","

map <leader><Enter> o<ESC>
map <leader><S-Enter> O<ESC>
nmap <leader>n :set number! <CR>
nmap <leader>l :set list!<CR>
nmap <leader>v :edit $MYVIMRC<CR>
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

" => Shortcut keys
inoremap <C-CR> <C-O>o
imap hh =>
imap aa @
imap <C-S> <ESC>:w<CR>
nmap <C-S> :w<CR>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv
imap <S-Tab> <C-o><<

" => Good old copy paste
nmap <S-Insert> "+gP
imap <S-Insert> <C-o><S-Insert>
vnoremap <C-C> "+y

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
