" pastjean's vimrc
" Author : Pierre-Alexandre St-Jean <pierrealexandre.stjean@gmail.com>
" Source : https://github.com/pastjean/dotfiles
"
" feel free to use, modify, destroy, attack , steal...

" => Preamble <================================================================ {

" Disable default from plugins
let g:multi_cursor_use_default_mapping=0

" Start plugins
filetype off
call pathogen#infect()
filetype plugin indent on
set hidden
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

" Disable bell plz
set vb t_vb= 
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/

" Tabs, spaces, wrapping {
set ts=2 sw=2 sts=2 "tabs
set expandtab "spaces no tabs
" }

" Display {
syntax on
set background=dark
set cursorline " Cursor highlight
set listchars=tab:▸\ ,eol:¬,trail:-,extends:>,precedes:<,nbsp:+

set ruler
set number
set cmdheight=1
set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ [%{&ff}/%{&fenc}]%=Line:\ %l/%L:%c\ \ %P
set showmatch
set showmode
set showcmd

if has('gui_running')
  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h16 
  colorscheme molokai
endif

" I Want a mouse
set mouse=a
" and more caracters to redraw
set ttyfast

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
" au FileType help setlocal textwidth=80

" }
" => Mappings <================================================================ {
let mapleader = ","
" Trick that makes ; be a : so you dont have to hit shift for every stupid
" command
noremap ; :

" => Shortcut keys
nnoremap <C-S> :w<CR>
imap <C-S> <C-O><C-S>

inoremap <c-cr> <esc>A<cr>

" => Indenting commands
vmap <Tab> >gv
vmap <S-Tab> <gv

" => Switch Buffers
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
imap <C-H> <ESC><C-H>
imap <C-L> <ESC><C-L>

nnoremap <leader>w :set wrap!<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>n :set number! <CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>r :RainbowToggle<cr>
nnoremap <leader>zw :ZoomWin<cr>
nnoremap <leader>p :TagbarToggle<cr>


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

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:go_disable_autoinstall = 0  
let g:neocomplete#enable_at_startup = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" Principally for commandT
set wildignore+=*.o,*.obj,*.d,.git,node_modules,.DS_Store

" Permits to execute and replace inline
nmap gr :.!ruby<CR>
vmap gr :!ruby<CR>

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let g:syntastic_auto_loc_list=2

let g:racer_experimental_completer = 1
set hidden

" }
" => In GUI - MacVim or GVIM <================================================= {
if has('gui_running')

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


"Use a bar-shaped cursor for insert mode, even through tmux.
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
