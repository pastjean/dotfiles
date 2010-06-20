" Orphe's vimrc
" feel free to use
" pierrealexandre.stjean@gmail.com

set nocompatible


" => General <============================

set autoread
set history=400
set noerrorbells

set fileformat=unix
set fileencoding=utf-8
set encoding=utf-8

filetype plugin indent on


" => Navigation <============================
set backspace=indent,eol,start
set whichwrap=h,l,<,>,[,] " makes line changing when going left or right instead of blocking at the beginning/end of a line

"set mouse=a


" => Cursor Movement <============================

" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge


" => Affichage <============================

colorscheme railscasts
set ruler
set number
set cmdheight=2
set laststatus=2
set statusline=%F%m%r%h\ %w\ Line:\ %l/%L:%c\ (git)[%{GitBranch()}
set listchars=tab:»\ ,eol:¬

set showmatch
set showmode
set showcmd

set showtabline=1
set cursorline " Cursor highlight


" => Search <============================

set ignorecase
set incsearch
set hlsearch


" => Syntax <============================

syntax on


" => Indenting <============================

set autoindent
set smartindent
set cindent


" => Tabs <============================

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2


" => Mappings <============================

let mapleader = ","

map <leader><Enter> o<ESC>
map <leader><S-Enter> O<ESC>
nmap <leader>n :set number! <CR>
nmap <leader>l :set list!<CR>

" => Intenting commands
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" => Shortcut keys
inoremap <C-CR> <C-O>o
imap jj <Esc>
imap hh =>
imap aa @

