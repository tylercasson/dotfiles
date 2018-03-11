runtime! autoload/pathogen.vim

if exists("g:loaded_pathogen")
    " load pathogen for budle support
    call pathogen#infect()
endif

set nocompatible

set laststatus=2

"set background=dark
"let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-eighties

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

let g:airline_powerline_fonts=1
"set mouse=a

syntax enable
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

set number
set showcmd
filetype indent on
set wildmenu
"set lazyredraw
set showmatch

set incsearch
set hlsearch

"let &colorcolumn=join(range(80,999),",")
"let &colorcolumn="79,".join(range(400,999),",")

imap jk <Esc>l
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"BEGIN_DEVASSISTANT_1
"Setting value devassistant to 0 will use your existing .vimrc file
"Setting value devassistant to 1 will use the vimrc defined by the devassistant feature

let devassistant=0
if devassistant==1
    :source /usr/share/devassistant/files/snippets/vim/vimrc
endif
"END_DEVASSISTANT_1

nmap <F8> :TagbarToggle<CR>

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

"##############################################################################
" NERDTree Stuff
"##############################################################################

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

"##############################################################################
" GitGutter Stuff
"##############################################################################

let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_async = 1

let g:airline_powerline_fonts = 1
