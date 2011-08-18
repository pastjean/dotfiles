" pastjean's vimrc
" Author : Pierre-Alexandre St-Jean <pierrealexandre.stjean@gmail.com>
" Source : https://github.com/pastjean/dotfiles/tree/master/vim
"
" feel free to use, modify, destroy, attack , steal...

" => Preamble <============================
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible "power to vim

" => General <============================

set encoding=utf-8
set fileformat=unix
set modelines=0
set scrolloff=3
set autoread
set history=1000
set undolevels=1000
set undoreload=10000
set hidden
set wildmenu
set wildmode=list:longest

set title
set noerrorbells

set ts=2 sw=2 sts=2 "tabs
set expandtab "spaces no tabs
set autoindent smartindent cindent "indenting
set viewoptions=folds,cursor,unix

set nobackup noswapfile

set pastetoggle=<F2> "disables vim from formatting paste

" => Navigation <============================
set backspace=indent,eol,start " line change on backspace
set whichwrap=h,l,<,>,[,] " line change when going left or right

nnoremap Y y$
nnoremap D d$

" Directional Keys
" Make cursor move by visual lines instead of file lines (when wrapping)
noremap k gk
noremap j gj
map <up> k
map <down> j
imap <up> <C-o>k
imap <down> <C-o>j

" Make horizontal scrolling less horrible.
set sidescroll=1
set sidescrolloff=10

" => Display <============================
syntax on
set background=dark
colorscheme molokai

set listchars=tab:▸\ ,eol:¬

set ruler
set number
set cmdheight=1
set laststatus=2
set statusline=%F%m%r%h\ %w\ Line:\ %l/%L:%c

set showmatch showmode showcmd
set cursorline " Cursor highlight
set splitbelow
set splitright

au VimResized * exe "normal! \<cw>="

" => Searching and movement ============================
nnoremap / /\v
vnoremap / /\v

set ignorecase 
set smartcase 
set incsearch 
set hlsearch
set gdefault
set virtualedit+=block

map <leader><space> :noh<cr>


" FileType specific Stuff
" C
au FileType c setlocal foldmethod=syntax
" Html
au FileType html setlocal foldmethod=manual
" Javascript
au FileType javascript setlocal foldmethod=marker
au FileType javascript setlocal foldmarker={,}
" Ruby
au FileType ruby setlocal foldmethod=syntax
" Vagrant
au BufRead,BufNewFile Vagrantfile set ft=ruby
" Vim
au FileType vim setlocal foldmethod=marker
au FileType help setlocal textwidth=78

" => Mappings <============================

let mapleader = ","
" Trick that makes ; be a : so you dont have to hit shift
nnoremap ; :

" => Copy Paste
"nnoremap <S-C-C> "+gp
vnoremap <C-C> "+y 

" => Shortcut keys
nnoremap <C-S> :w<CR>
imap <C-S> <C-O><C-S>

" Switch Buffers
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

nnoremap <leader>s :%s//<left>

nmap <leader>l :set list!<CR>
nmap <leader>n :set number! <CR>
nmap <silent> <Leader>b :LustyJuggler<CR>
noremap <leader>j :CommandT<cr>
map <leader>u :TMiniBufExplorer<cr>
nnoremap <F5> :GundoToggle<CR>
inoremap <c-cr> <esc>A<cr>

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

" Heresy
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" => in gvim or macvim
if has('gui_running')
  set guifont=Menlo:h12
  set guifont=Mensch:h12 " make it beautiful

  " Remove unusefull scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  
  " vertical splits with a better line
  set fillchars+=vert:│

  set guioptions-=T  " no toolbar

  " Different cursors for different modes.
  set guicursor=n-c:block-Cursor-blinkon0
  set guicursor+=v:block-vCursor-blinkon0
endif
