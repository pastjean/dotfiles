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
noremap k gk
noremap j gj
map <up> k
map <down> j
imap <up> <C-o>k
imap <down> <C-o>j


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

" => Copy Paste
nnoremap <S-C-C> "+gp
inoremap <S-C-C> <ESC>"+gpi
vnoremap <C-C> "+y 

" => Shortcut keys
inoremap hh =>
inoremap aa @
nnoremap <C-S> :w<CR>
imap <C-S> <C-O><C-S>
  
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
nnoremap <F5> :GundoToggle<CR>

" => Python/Ruby filter
" Permits to execute and replace inline
nmap gp :.!python<CR>
vmap gp :!python<CR>
nmap gr :.!ruby<CR>
vmap gr :!ruby<CR>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv

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
