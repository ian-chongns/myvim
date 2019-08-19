" pathgen
execute pathogen#infect()

" self-defined
syntax on
filetype plugin indent on

" vim-colors-solarized
syntax enable
set background=dark
"set background=light
let g:solarized_termcolors=256
colorscheme solarized

let mapleader = "\<Space>"
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>m z.
nnoremap <leader>h zt

set nocompatible
set number
set relativenumber
set cursorline

set wildmenu
set lazyredraw
set showmatch

set showmode
set autoindent

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set completeopt=menuone,menu,longest

set fo-=c fo-=r fo-=o


" BreakLine: Return TRUE if in the middle of {} or () in INSERT mode
" fun! to escape E122 when source .vimrc
fun! BreakLine()
  if (mode() == 'i')
    return ((getline(".")[col(".")-2] == '{' && getline(".")[col(".")-1] == '}') ||
         \(getline(".")[col(".")-2] == '(' && getline(".")[col(".")-1] == ')'))
  else
    return 0
  endif
endfun

" Remap <Enter> to split the line and insert a new line in between if
" BreakLine return True
inoremap <expr> <CR> BreakLine() ? "<CR><ESC>O" : "<CR>"


" NERD Tree
" autocmd vimenter * NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>

" allows vimrc in project/.vimrc
set exrc
set secure
