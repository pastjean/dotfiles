" pastjean's vimrc
" feel free to use, modify, destroy, attack , steal...
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

filetype on
filetype plugin indent on
syntax on

set ts=2 sw=2 sts=2 "tabs
set expandtab "spaces no tabs
set autoindent smartindent cindent "indenting

set nobackup noswapfile

set pastetoggle=<F2> "disables vim from formatting paste

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
colorscheme molokai

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
" Trick that makes ; be a : so you dont have to hit shift
nnoremap ; : 

" => Shortcut keys
imap hh =>
imap aa @
imap <C-S> <ESC>:w<CR>
nmap <C-S> :w<CR>
vnoremap <C-C> "+y "Clipboard copy 

nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

nmap <leader>l :set list!<CR>
nmap <leader>m :nohlsearch<CR>
nmap <leader>n :set number! <CR>
nmap <silent> <Leader>b :LustyJuggler<CR>
noremap <leader>j :CommandT<cr>
map <leader>u :TMiniBufExplorer<cr>

" => Python filter
nmap gp :.!python<CR>
vmap gp :!python<CR>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv
imap <S-Tab> <C-o><<

" => Visual Wrap Text
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap "  <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>

