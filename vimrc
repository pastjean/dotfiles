" Orphe's vimrc
" feel free to use
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

" => Indenting commands
nmap <D-]> >>
nmap <D-[> <<
" nmap <Tab> >>
" nmap <S-Tab> <<
vmap <M-]> >gv
vmap <M-[> <gv
vmap <Tab> >gv
vmap <S-Tab> <gv

" => Shortcut keys
inoremap <C-CR> <C-O>o
imap jj <Esc>
vmap jj <Esc> 
imap hh =>
imap aa @
imap <C-S> <C-o>:w<CR>
nmap <C-S> :w<CR>

" => Good old copy paste
nmap <S-Insert> "+gP
imap <S-Insert> <C-o><S-Insert>
vmap <S-C-Insert> "+y

" => Auto Close Pairs
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
autocmd Syntax html,vim inoremap < <lt>><Left>

function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=ClosePair('}')<CR>

inoremap <expr> <BS> DeleteEmptyPairs()

" => Visual Wrap Text
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
"dont know how to do it otherwise , it conflicts with my ctrl+c
vnoremap   <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>


