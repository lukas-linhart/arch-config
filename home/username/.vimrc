set nu
set shiftwidth=4
set softtabstop=4
set expandtab
set foldcolumn=3
set shiftround
set hlsearch
set mouse=a

" KEYBINDINGS

let mapleader = ","

" remap exiting insert mode
inoremap jk <esc>

" disable arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" move current line up
nnoremap <leader>- kddpk

" move current line down
nnoremap <leader>_ ddp

" editing and sourcing vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" simplify page objects
nnoremap <leader>se /\(\a\+\)\.\1<cr>
nnoremap <leader>sim :%s/\(\a\+\)\.\1/\1/ge<cr>

noh

