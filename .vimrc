" pastjean's vimrc
" Author : Pierre-Alexandre St-Jean <pierrealexandre.stjean@gmail.com>
" Source : https://github.com/pastjean/dotfiles/tree/master/vim
"
" feel free to use, modify, destroy, attack , steal...

" => Preamble <================================================================ {

filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible "power to vim
" }
" => Basic options <=========================================================== {

set encoding=utf-8
set fileformat=unix
set modelines=0
set title
set noerrorbells
set autoread
set splitbelow
set splitright
set autoindent 
set smartindent 
set cindent
set viewoptions=cursor,unix
set history=1000
"set undofile
"set undoreload=10000
set undolevels=1000
set noswapfile
set wildmenu
set wildmode=list:longest

" Tabs, spaces, wrapping {
set ts=2 sw=2 sts=2 "tabs
set expandtab "spaces no tabs
" }

" Display {
syntax on
set background=dark
colorscheme molokai
set cursorline " Cursor highlight
set listchars=tab:▸\ ,eol:¬

set ruler
set number
set cmdheight=1
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ [%{&ff}/%{&fenc}]%=Line:\ %l/%L:%c\ \ %P
set showmatch
set showmode
set showcmd

au InsertEnter * hi StatusLine ctermfg=196 guifg=#F92672
au InsertLeave * hi StatusLine guifg=#455354 guibg=fg

" }

" }
" => Navigation <============================================================== {

" Directional Keys
" Make cursor move by visual lines instead of file lines (when wrapping)
noremap k gk
noremap j gj
map <up> k
map <down> j
imap <up> <C-o>k
imap <down> <C-o>j

set scrolloff=3
set backspace=indent,eol,start " line change on backspace
set whichwrap=h,l,<,>,[,] " line change when going left or right

nnoremap Y y$
nnoremap D d$
" Make horizontal scrolling less horrible.
set sidescroll=1
set sidescrolloff=10
" }
" => Searching and movement =================================================== {
nnoremap / /\v
vnoremap / /\v

set ignorecase 
set smartcase 
set incsearch 
set hlsearch
set gdefault
set virtualedit+=block

map <leader><space> :nohl<cr>

" Heresy
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
" }
" => Folding <================================================================= {
" }
" => Filetype specific <======================================================= {
" FileType specific Stuff

" " C
" au FileType c setlocal foldmethod=syntax
" " Html
" au FileType html setlocal foldmethod=manual
" " Javascript
" au FileType javascript setlocal foldmethod=marker
" au FileType javascript setlocal foldmarker={,}
" " Ruby
" au FileType ruby setlocal foldmethod=syntax
" " Vagrant
" au BufRead,BufNewFile Vagrantfile set ft=ruby
" " Vim
" au FileType vim setlocal foldmethod=marker
" au FileType help setlocal textwidth=78

" }
" => Mappings <================================================================ {
let mapleader = ","
" Trick that makes ; be a : so you dont have to hit shift for every stupid
" command
noremap ; :

" => Shortcut keys
nnoremap <C-S> :w<CR>
imap <C-S> <C-O><C-S>
set pastetoggle=<F2> "disables vim from formatting paste

inoremap <c-cr> <esc>A<cr>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv

" => Switch Buffers
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

nnoremap <leader>s :%s/<left>

nnoremap <leader>w :set wrap!<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>n :set number! <CR>
nnoremap <silent> <Leader>p :LustyJuggler<CR>
noremap <leader>j :CommandT<cr>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>r :call rainbow#Toggle()<cr>
let g:EasyMotion_leader_key = '<Leader>m'

" => Visual Wrap Text
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>

" }
" => Plugin/Filters <========================================================== {

" Permits to execute and replace inline
nmap gp :.!python<CR>
vmap gp :!python<CR>
nmap gr :.!ruby<CR>
vmap gr :!ruby<CR>

" }
" => In GUI - MacVim or GVIM <================================================= {
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
" }

