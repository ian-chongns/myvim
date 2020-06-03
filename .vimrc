" Use of pathogen is replaced by native vim packages

" self-defined
syntax on
filetype plugin indent on

" vim-colors-solarized
"syntax enable
set background=dark
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized

" vim-indent-guides
" manually define colors
colorscheme default
hi Normal ctermfg=255 guifg=#eeeeee ctermbg=235 guibg=#262626 
hi CursorLineNr ctermfg=78 guifg=#5fd787 ctermbg=60 guibg=#5f5f87
hi LineNr ctermfg=69 guifg=#5f87ff ctermbg=233 guibg=#121212
hi Comment ctermfg=103 guifg=#8787af
hi Statement ctermfg=208 guifg=#ff8700
hi Special ctermfg=180 guifg=#d7af87
hi PreProc ctermfg=72 guifg=#5faf87
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=#c6c6c6 ctermbg=251
hi IndentGuidesEven guibg=#9e9e9e ctermbg=247

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

" vim-latex
" allows .tex to be identified as ft=tex not ft=plaintex
let g:tex_flavor='latex'

" allows vimrc in project/.vimrc
set exrc
set secure
