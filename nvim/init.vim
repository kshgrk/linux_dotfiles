"                              ██
"                             ░░
"                    ██    ██ ██ ██████████  ██████  █████
"                   ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
"                   ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"                    ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"                     ░░██   ░██ ███ ░██ ░██░███   ░░█████
"             ░░██      ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
set nocompatible
" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set backspace=indent,eol,start
set shortmess+=I
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
nmap Q <Nop>                            " 'Q' in normal mode enters Ex mode. You almost never want this.
set noerrorbells visualbell t_vb=       " audio bell disbled

"set colorcolumn=81
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse+=a                            " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=2                    
set tabstop=4                           " Insert 2 spaces for a tab
set softtabstop=4
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set showtabline=2                       " Always show tabs
set fileformat=unix
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set laststatus=1                        " Always display the status line
"set cursorline                          " Enable highlighting of the current line
set number relativenumber
set background=dark                     " tell vim what the background color looks like
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard+=unnamedplus              " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory


" Better nav for omnicomplete
    inoremap <expr> <c-j> ("\<C-n>")
    inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
    nnoremap <M-j>    :resize -2<CR>
    nnoremap <M-k>    :resize +2<CR>
    nnoremap <M-h>    :vertical resize -2<CR>
    nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
    inoremap jk <Esc>
    inoremap kj <Esc>
    inoremap ZZ <Esc>
    inoremap ii <Esc>


" Nert tree toggle
 "   map <C-n> :NERDTreeToggle<CR>

" Easy CAPS
    inoremap <c-u> <ESC>viwUi
    nnoremap <c-u> viwU<Esc>
    inoremap <c-d> <ESC>viwui
    nnoremap <c-d> viwu<Esc>

    inoremap jk <Esc>
    inoremap kj <Esc>
    inoremap ZZ <Esc>
    nnoremap ZX <Esc>:q!<CR>
    inoremap ii <Esc>
    nnoremap oo o<Esc>
    nnoremap ou O<Esc>
    map <leader>d :bdelete<cr>
" TAB in general mode will move to text buffer
    nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
    nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
    nnoremap <C-s> :w<CR> :SClose <CR>
" Alternate way to quit
    nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
    "nnoremap <C-c> <Esc>

" <TAB>: completion.
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
    vnoremap < <gv
    vnoremap > >gv

" Better commenting
    nnoremap <leader>/ :Commentary<CR>
    vnoremap <leader>/ :Commentary<CR>


" Better window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    nnoremap <Leader>o o<Esc>^Da
    nnoremap <Leader>O O<Esc>^Da

    nnoremap <Leader>t <Esc>:FloatermToggle<CR>
    nnoremap <Leader>r <Esc>:RnvimrToggle<CR>
    nnoremap <Leader>h <C-W>s
    nnoremap <Leader>v <C-W>v
    nnoremap <Leader>; <C-W>s<CR>:terminal <CR>

call plug#begin('~/local/share/nvim/plugged')
Plug 'codota/tabnine-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
call plug#end()
